import type { VercelRequest, VercelResponse } from '@vercel/node';
import { neon } from '@neondatabase/serverless';

export const config = { maxDuration: 60 };

function getApiKeys(): string[] {
  const raw = process.env.GEMINI_API_KEY || '';
  return raw.split(',').map(k => k.trim()).filter(Boolean);
}

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
      const { fileUri, sessionDate, sessionNumber, mimeType, keyIndex } = req.body;

      if (!fileUri || !sessionDate) {
        return res.status(400).json({ error: 'Parametri mancanti (fileUri, sessionDate)' });
      }

      const apiKeys = getApiKeys();
      if (apiKeys.length === 0) {
        return res.status(500).json({ error: 'GEMINI_API_KEY non configurata' });
      }

      // Estrai il nome risorsa su Google (es. files/xyz123)
      const rawFile = fileUri.includes('files/') ? fileUri.substring(fileUri.indexOf('files/')) : fileUri;
      const resourceName = rawFile.startsWith('files/') ? rawFile : `files/${rawFile}`;

      // Individua quale chiave possiede il file caricato
      let activeKey = '';
      if (typeof keyIndex === 'number' && apiKeys[keyIndex]) {
        activeKey = apiKeys[keyIndex];
      } else {
        for (const k of apiKeys) {
          const check = await fetch(`https://generativelanguage.googleapis.com/v1beta/${resourceName}?key=${k}`);
          if (check.ok) {
            activeKey = k;
            break;
          }
        }
      }

      if (!activeKey) {
        activeKey = apiKeys[0];
      }

      // Polling: attesa che Google elabori il file audio in stato ACTIVE
      let isReady = false;
      for (let i = 0; i < 20; i++) {
        const checkRes = await fetch(`https://generativelanguage.googleapis.com/v1beta/${resourceName}?key=${activeKey}`);
        if (checkRes.ok) {
          const fileInfo = await checkRes.json();
          if (fileInfo.state === 'ACTIVE') {
            isReady = true;
            break;
          }
          if (fileInfo.state === 'FAILED') {
            return res.status(500).json({ error: 'Elaborazione del file audio fallita su Google' });
          }
        }
        await new Promise(r => setTimeout(r, 2000));
      }

      if (!isReady) {
        return res.status(504).json({ error: 'Timeout: il file audio non è ancora pronto sui server Google' });
      }

      const promptText = `
Sei il Cronista della carovana della campagna di Pathfinder 1E "Jade Regent".
Ascolta questa registrazione audio della sessione di gioco di ruolo.

REGOLE CRITICHE:
1. Filtra completamente ed elimina qualsiasi chiacchiera fuori gioco (cibo, vita reale, battute personali, pause).
2. Distingui il metagame dalle azioni narrative: trasforma le discussioni meccaniche sui tiri in narrazione fluida.
3. Riconosci i personaggi e compagni: Ryoujin (samurai Oni-spawn), il lupo compagno Hisui, Airyn (druida), Azoi (magus tengu), Nijena (barda), Kaede (kitsune ninja), Ameiko Kaijitsu (erede al trono del Minkai), Koya / Zaya, Sandru Vhiski, Shalelu Andosana (elfa).
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
        `https://generativelanguage.googleapis.com/v1beta/models/gemini-3.8-flash:generateContent?key=${activeKey}`,
        {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({
            contents: [
              {
                role: 'user',
                parts: [
                  {
                    fileData: {
                      mimeType: mimeType || 'audio/mp3',
                      fileUri: `https://generativelanguage.googleapis.com/v1beta/${resourceName}`
                    }
                  },
                  { text: promptText }
                ]
              }
            ],
            generationConfig: {
              responseMimeType: 'application/json',
              temperature: 0.2
            }
          })
        }
      );

      if (!geminiRes.ok) {
        const err = await geminiRes.text();
        return res.status(geminiRes.status).json({ error: 'Errore risposta Gemini', details: err });
      }

      const geminiData = await geminiRes.json();
      const rawText = geminiData.candidates?.[0]?.content?.parts?.[0]?.text || '';

      // Estrazione e pulizia sicura del JSON
      let parsed: any;
      try {
        const jsonMatch = rawText.match(/\{[\s\S]*\}/);
        parsed = JSON.parse(jsonMatch ? jsonMatch[0] : rawText);
      } catch {
        parsed = {
          title: `Sessione ${sessionNumber}`,
          summary: rawText,
          combat: '',
          loot: '',
          npcs: '',
          quotes: ''
        };
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

      // Pulizia: elimina l'audio temporaneo dai server di Google
      fetch(`https://generativelanguage.googleapis.com/v1beta/${resourceName}?key=${activeKey}`, {
        method: 'DELETE'
      }).catch(() => {});

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

      if (!id) {
        return res.status(400).json({ error: 'ID sessione obbligatorio per la modifica' });
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
      const id = req.query.id || req.body?.id;
      if (!id) {
        return res.status(400).json({ error: 'ID sessione mancante' });
      }

      await sql`DELETE FROM campaign_sessions WHERE id = ${Number(id)}`;
      return res.status(200).json({ success: true, deletedId: Number(id) });
    } catch (err: any) {
      return res.status(500).json({ error: 'Errore eliminazione', details: err.message });
    }
  }

  return res.status(405).json({ error: 'Metodo non consentito' });
}