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

  // 1. GET: Lettura sessioni ordinate per data
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

  // 2. POST: Salvataggio nuova sessione
  if (req.method === 'POST') {
    try {
      const { sessionNumber, sessionDate, title, summary, combat, loot, npcs, quotes } = req.body;

      const inserted = await sql`
        INSERT INTO campaign_sessions (
          session_number, session_date, title, summary, combat, loot, npcs, quotes
        ) VALUES (
          ${Number(sessionNumber) || 1},
          ${sessionDate}::DATE,
          ${title || 'Cronaca di Viaggio'},
          ${summary || ''},
          ${combat || ''},
          ${loot || ''},
          ${npcs || ''},
          ${quotes || ''}
        )
        RETURNING id, session_number, to_char(session_date, 'YYYY-MM-DD') as session_date,
                  title, summary, combat, loot, npcs, quotes, created_at, updated_at;
      `;

      return res.status(201).json(inserted[0]);
    } catch (err: any) {
      console.error('Errore POST sessions:', err);
      return res.status(500).json({ error: 'Errore inserimento', details: err.message });
    }
  }

  // 3. PUT: Modifica manuale
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
      return res.status(500).json({ error: 'Errore modifica', details: err.message });
    }
  }

  // 4. DELETE: Eliminazione
  if (req.method === 'DELETE') {
    try {
      const id = req.query.id || req.body?.id;
      await sql`DELETE FROM campaign_sessions WHERE id = ${Number(id)}`;
      return res.status(200).json({ success: true, deletedId: Number(id) });
    } catch (err: any) {
      return res.status(500).json({ error: 'Errore eliminazione', details: err.message });
    }
  }

  return res.status(405).json({ error: 'Metodo non consentito' });
}