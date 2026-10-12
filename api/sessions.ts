import type { VercelRequest, VercelResponse } from '@vercel/node';
import { neon } from '@neondatabase/serverless';

export default async function handler(req: VercelRequest, res: VercelResponse) {
  // Header CORS
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type');

  if (req.method === 'OPTIONS') {
    return res.status(200).end();
  }

  const databaseUrl = process.env.DATABASE_URL;
  if (!databaseUrl) {
    return res.status(500).json({ error: 'DATABASE_URL non configurata su Vercel' });
  }

  const sql = neon(databaseUrl);

  // ==========================================
  // GET: Tutte le sessioni ordinate per DATA
  // ==========================================
  if (req.method === 'GET') {
    try {
      const orderDirection = req.query.order === 'asc' ? 'ASC' : 'DESC';

      // Ordinamento primario su session_date e secondario su session_number
      const sessions = orderDirection === 'ASC'
        ? await sql`
            SELECT id, session_number, to_char(session_date, 'YYYY-MM-DD') as session_date, 
                   title, summary, combat, loot, npcs, quotes, audio_duration, created_at, updated_at
            FROM campaign_sessions
            ORDER BY session_date ASC, session_number ASC
          `
        : await sql`
            SELECT id, session_number, to_char(session_date, 'YYYY-MM-DD') as session_date, 
                   title, summary, combat, loot, npcs, quotes, audio_duration, created_at, updated_at
            FROM campaign_sessions
            ORDER BY session_date DESC, session_number DESC
          `;

      return res.status(200).json(sessions);
    } catch (err: any) {
      console.error('Errore GET sessions:', err);
      return res.status(500).json({ error: 'Errore lettura database', details: err.message });
    }
  }

  // ==========================================
  // POST: Analisi Audio con Gemini + Salvataggio
  // ==========================================
  if (req.method === 'POST') {
    try {
      const { fileUri, sessionDate, sessionNumber, manualData } = req.body;

      // Modalità A: Inserimento manuale diretto (senza audio)
      if (manualData) {
        const result = await sql`
          INSERT INTO campaign_sessions (
            session_number, session_date, title, summary, combat, loot, npcs, quotes, audio_duration
          ) VALUES (
            ${manualData.session_number || 1},
            ${manualData.session_date}::DATE,${manualData.title || 'Nuova Sessione'},
            ${manualData.summary \vert{}\vert{} ''},${manualData.combat || ''},
            ${manualData.loot \vert{}\vert{} ''},${manualData.npcs || ''},
            ${manualData.quotes \vert{}\vert{} ''},${manualData.audio_duration || null}
          )
          RETURNING id, session_number, to_char(session_date, 'YYYY-MM-DD') as session_date,
                    title, summary, combat, loot, npcs, quotes, audio_duration, created_at, updated_at;
        `;
        return res.status(201).json(result[0]);
      }

      // Modalità B: Elaborazione Audio tramite Gemini
      if (!fileUri || !sessionDate) {
        return res.status(400).json({ error: 'Parametri mancanti: fileUri e sessionDate sono obbligatori' });
      }

      const apiKey = process.env.GEMINI_API_KEY;
      if (!apiKey) {
        return res.status(500).json({ error: 'GEMINI_API_KEY non configurata' });
      }

      // Prompt specialistico per la campagna Jade Regent
      const promptText = `
Sei il Cronista ufficiale della carovana della campagna GDR di Pathfinder 1E "Jade Regent".
Ascolta la registrazione audio di questa sessione di gioco di ruolo.

ISTRUZIONI CRITICHE:
1. Filtra ed elimina completamente qualsiasi chiacchiera "fuori gioco" (ordinazioni di cibo, discussioni su argomenti della vita reale, battute personali, pause).
2. Distingui il metagame dalle azioni narrative: trasforma le discussioni meccaniche sui dadi in narrazione fluida.
3. Riconosci e valorizza i membri del party e compagni (es. Ryoujin il samurai Oni-spawn, il suo lupo Hisui, Airyn la druida, Azoi iloo magus, Nijena la bardo,Kaede la Kitzune Ameiko l erede al trono di mikai, Zaya mamma di sandru, Sandru, Shalelu elfa).
4. Restituisci ESCLUSIVAMENTE un oggetto JSON valido (senza markdown o backtick \`\`\`json) con questi campi esatti:
{
  "title": "Titolo epico e suggestivo della sessione",
  "summary": "Resoconto dettagliato e narrativo degli eventi, delle decisioni e delle scoperte della carovana (3-5 paragrafi ben scritti)",
  "combat": "Descrizione degli scontri e delle creature affrontate, o 'Nessun combattimento rilevante'",
  "loot": "Elenco di monete, armi magiche, pergamene o oggetti recuperati (formattato ad elenco)",
  "npcs": "PNG incontrati, alleanze strette o sviluppi relazionali",
  "quotes": "Le migliori citazioni, battute iconiche o colpi critici avvenuti durante la sessione"
}`;

      const geminiResponse = await fetch(
        `https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=${apiKey}`,
        {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({
            contents: [
              {
                role: 'user',
                parts: [
                  { fileData: { mimeType: 'audio/mp3', fileUri: fileUri } },
                  { text: promptText }
                ]
              }
            ],
            generationConfig: {
              responseMimeType: 'application/json'
            }
          })
        }
      );

      if (!geminiResponse.ok) {
        const err = await geminiResponse.text();
        return res.status(geminiResponse.status).json({ error: 'Errore risposta Gemini', details: err });
      }

      const geminiData = await geminiResponse.json();
      const rawText = geminiData.candidates?.[0]?.content?.parts?.[0]?.text;

      if (!rawText) {
        return res.status(500).json({ error: 'Nessun testo generato da Gemini' });
      }

      let parsedGdr: any;
      try {
        parsedGdr = JSON.parse(rawText.replace(/^```json\s*/i, '').replace(/```$/i, '').trim());
      } catch (e) {
        console.error('Parsing JSON fallito, testo ricevuto:', rawText);
        parsedGdr = {
          title: `Sessione ${sessionNumber || ''}`,
          summary: rawText,
          combat: '',
          loot: '',
          npcs: '',
          quotes: ''
        };
      }

      // Inserimento su Neon DB
      const result = await sql`
        INSERT INTO campaign_sessions (
          session_number, session_date, title, summary, combat, loot, npcs, quotes
        ) VALUES (
          ${Number(sessionNumber) || 1},
          ${sessionDate}::DATE,
          ${parsedGdr.title || 'Cronaca di Viaggio'},
          ${parsedGdr.summary || ''},
          ${parsedGdr.combat || ''},
          ${parsedGdr.loot || ''},
          ${parsedGdr.npcs || ''},
          ${parsedGdr.quotes || ''}
        )
        RETURNING id, session_number, to_char(session_date, 'YYYY-MM-DD') as session_date,
                  title, summary, combat, loot, npcs, quotes, audio_duration, created_at, updated_at;
      `;

      return res.status(201).json(result[0]);
    } catch (err: any) {
      console.error('Errore POST session:', err);
      return res.status(500).json({ error: err.message || 'Errore elaborazione sessione' });
    }
  }

  // ==========================================
  // PUT: Modifica manuale (correzione errori AI)
  // ==========================================
  if (req.method === 'PUT') {
    try {
      const { id, session_number, session_date, title, summary, combat, loot, npcs, quotes } = req.body;

      if (!id) {
        return res.status(400).json({ error: 'ID sessione mancante per la modifica' });
      }

      const updated = await sql`
        UPDATE campaign_sessions
        SET session_number = ${Number(session_number)},
            session_date = ${session_date}::DATE,
            title = ${title},
            summary = ${summary},
            combat = ${combat || ''},
            loot = ${loot || ''},
            npcs = ${npcs || ''},
            quotes = ${quotes || ''},
            updated_at = CURRENT_TIMESTAMP
        WHERE id = ${Number(id)}
        RETURNING id, session_number, to_char(session_date, 'YYYY-MM-DD') as session_date,
                  title, summary, combat, loot, npcs, quotes, audio_duration, created_at, updated_at;
      `;

      if (updated.length === 0) {
        return res.status(404).json({ error: 'Sessione non trovata' });
      }

      return res.status(200).json(updated[0]);
    } catch (err: any) {
      console.error('Errore PUT session:', err);
      return res.status(500).json({ error: 'Errore aggiornamento sessione', details: err.message });
    }
  }

  // ==========================================
  // DELETE: Eliminazione sessione
  // ==========================================
  if (req.method === 'DELETE') {
    try {
      const id = req.query.id;
      if (!id) {
        return res.status(400).json({ error: 'ID mancante nella query (?id=...)' });
      }

      await sql`
        DELETE FROM campaign_sessions
        WHERE id = ${Number(id)}
      `;

      return res.status(200).json({ success: true, deletedId: Number(id) });
    } catch (err: any) {
      console.error('Errore DELETE session:', err);
      return res.status(500).json({ error: 'Errore eliminazione sessione', details: err.message });
    }
  }

  return res.status(405).json({ error: 'Metodo non supportato' });
}