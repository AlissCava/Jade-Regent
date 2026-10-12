import type { VercelRequest, VercelResponse } from '@vercel/node';
import { neon } from '@neondatabase/serverless';

export default async function handler(req: VercelRequest, res: VercelResponse) {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type');

  if (req.method === 'OPTIONS') return res.status(200).end();

  const databaseUrl = process.env.DATABASE_URL;
  if (!databaseUrl) {
    return res.status(500).json({ error: 'DATABASE_URL non configurata su Vercel' });
  }

  const sql = neon(databaseUrl);

  // 1. GET: Sessioni ordinate per data
  if (req.method === 'GET') {
    try {
      const orderDirection = req.query.order === 'asc' ? 'ASC' : 'DESC';

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

  // 2. POST: Analisi Gemini + Inserimento DB
  if (req.method === 'POST') {
    try {
      const { fileUri, sessionDate, sessionNumber, mimeType } = req.body;

      if (!fileUri || !sessionDate) {
        return res.status(400).json({ error: 'Parametri mancanti (fileUri, sessionDate)' });
      }

      const apiKey = process.env.GEMINI_API_KEY;
      if (!apiKey) {
        return res.status(500).json({ error: 'GEMINI_API_KEY non configurata' });
      }

      // Estrai il nome file pulito (es. files/xyz123)
      const fileName = fileUri.includes('files/') ? fileUri.substring(fileUri.indexOf('files/')) : fileUri;

      // Attesa se il file audio è ancora in elaborazione da parte di Google
      for (let i = 0; i < 15; i++) {
        const checkRes = await fetch(`https://generativelanguage.googleapis.com/v1beta/${fileName}?key=${apiKey}`);
        if (checkRes.ok) {
          const fileInfo = await checkRes.json();
          if (fileInfo.state === 'ACTIVE') break;
          if (fileInfo.state === 'FAILED') {
            return res.status(500).json({ error: 'Elaborazione del file audio fallita su Google' });
          }
        }
        await new Promise(r => setTimeout(r, 2000));
      }

      const promptText = `
Sei il Cronista della carovana della campagna di Pathfinder 1E "Jade Regent".
Ascolta questa registrazione audio della sessione di gioco di ruolo.

REGOLE CRITICHE:
1. Filtra completamente ed elimina qualsiasi chiacchiera fuori gioco (cibo, vita reale, battute personali, pause).
2. Distingui il metagame dalle azioni narrative: trasforma le discussioni meccaniche sui tiri in narrazione fluida.
3. Riconosci i personaggi e compagni: Ryoujin (il samurai Oni-spawn), il lupo Hisui, Airyn la druida, Azoi il mago, Nijena la barda, Kaede la litzone, Ameiko l'erede al trono di MIkai, Zaia mamma di sandru, Sandru, Shalelu wlfa.
4. Rispondi ESCLUSIVAMENTE con un JSON valido (senza markdown o delimitatori \`\`\`json):
{
  "title": "Titolo epico della sessione",
  "summary": "Resoconto narrativo scorrevole e coinvolgente degli eventi e delle scoperte (3-5 paragrafi)",
  "combat": "Scontri e nemici affrontati, o 'Nessuno scontro rilevante'",
  "loot": "Tesori, monete, armi magiche o oggetti recuperati",
  "npcs": "PNG incontrati o sviluppi importanti",
  "quotes": "Le battute più memorabili, colpi critici o citazioni epiche"
}
`;

      const geminiRes = await fetch(
        `https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=${apiKey}`,
        {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({
            contents: [
              {
                role: 'user',
                parts: [
                  { fileData: { mimeType: mimeType || 'audio/mp3', fileUri: `https://generativelanguage.googleapis.com/v1beta/${fileName}` } },
                  { text: promptText }
                ]
              }
            ],
            generationConfig: { responseMimeType: 'application/json' }
          })
        }
      );

      if (!geminiRes.ok) {
        const err = await geminiRes.text();
        return res.status(geminiRes.status).json({ error: 'Errore risposta Gemini', details: err });
      }

      const geminiData = await geminiRes.json();
      const rawText = geminiData.candidates?.[0]?.content?.parts?.[0]?.text;

      let parsed: any;
      try {
        parsed = JSON.parse(rawText.replace(/^```json\s*/i, '').replace(/```$/i, '').trim());
      } catch {
        parsed = { title: `Sessione ${sessionNumber}`, summary: rawText, combat: '', loot: '', npcs: '', quotes: '' };
      }

      const result = await sql`
        INSERT INTO campaign_sessions (
          session_number, session_date, title, summary, combat, loot, npcs, quotes
        ) VALUES (
          ${Number(sessionNumber) || 1},
          ${sessionDate}::DATE,
          ${parsed.title || 'Cronaca di Viaggio'},
          ${parsed.summary || ''},
          ${parsed.combat || ''},
          ${parsed.loot || ''},
          ${parsed.npcs || ''},
          ${parsed.quotes || ''}
        )
        RETURNING id, session_number, to_char(session_date, 'YYYY-MM-DD') as session_date,
                  title, summary, combat, loot, npcs, quotes, created_at, updated_at;
      `;

      return res.status(201).json(result[0]);
    } catch (err: any) {
      console.error('Errore POST session:', err);
      return res.status(500).json({ error: err.message || 'Errore elaborazione' });
    }
  }

  // 3. PUT: Modifica manuale correttiva
  if (req.method === 'PUT') {
    try {
      const { id, session_number, session_date, title, summary, combat, loot, npcs, quotes } = req.body;

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
                  title, summary, combat, loot, npcs, quotes, created_at, updated_at;
      `;

      return res.status(200).json(updated[0]);
    } catch (err: any) {
      return res.status(500).json({ error: 'Errore salvataggio modifiche', details: err.message });
    }
  }

  // 4. DELETE: Eliminazione
  if (req.method === 'DELETE') {
    try {
      const id = req.query.id;
      await sql`DELETE FROM campaign_sessions WHERE id = ${Number(id)}`;
      return res.status(200).json({ success: true, deletedId: Number(id) });
    } catch (err: any) {
      return res.status(500).json({ error: 'Errore eliminazione', details: err.message });
    }
  }

  return res.status(405).json({ error: 'Method not allowed' });
}