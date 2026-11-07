import type { VercelRequest, VercelResponse } from '@vercel/node';
import { neon } from '@neondatabase/serverless';

export default async function handler(req: VercelRequest, res: VercelResponse) {
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

  try {
    // 1. GET: Tutte le note comuni
    if (req.method === 'GET') {
      const rows = await sql`
        SELECT * FROM shared_notes 
        ORDER BY is_pinned DESC, updated_at DESC, id DESC;
      `;
      return res.status(200).json(rows);
    }

    // 2. POST: Nuova nota comune
    if (req.method === 'POST') {
      const { title, content, author, category, is_pinned } = req.body;
      if (!title || !content) {
        return res.status(400).json({ error: 'Titolo e contenuto sono obbligatori' });
      }

      const rows = await sql`
        INSERT INTO shared_notes (title, content, author, category, is_pinned)
        VALUES (
          ${title.trim()}, 
          ${content.trim()}, 
          ${author?.trim() || 'Carovana'}, 
          ${category?.trim() || 'Generale'}, 
          ${Boolean(is_pinned)}
        )
        RETURNING *;
      `;
      return res.status(201).json(rows[0]);
    }

    // 3. PUT: Modifica nota comune
    if (req.method === 'PUT') {
      const { id, title, content, author, category, is_pinned } = req.body;
      if (!id || !title || !content) {
        return res.status(400).json({ error: 'Dati mancanti per la modifica' });
      }

      const rows = await sql`
        UPDATE shared_notes
        SET 
          title = ${title.trim()},
          content = ${content.trim()},
          author = ${author?.trim() || 'Carovana'},
          category = ${category?.trim() || 'Generale'},
          is_pinned = ${Boolean(is_pinned)},
          updated_at = CURRENT_TIMESTAMP
        WHERE id = ${Number(id)}
        RETURNING *;
      `;

      if (rows.length === 0) {
        return res.status(404).json({ error: 'Nota non trovata' });
      }
      return res.status(200).json(rows[0]);
    }

    // 4. DELETE: Eliminazione nota comune
    if (req.method === 'DELETE') {
      const id = req.query.id || req.body?.id;
      if (!id) {
        return res.status(400).json({ error: 'ID mancante' });
      }

      await sql`DELETE FROM shared_notes WHERE id = ${Number(id)};`;
      return res.status(200).json({ success: true, deletedId: Number(id) });
    }

    return res.status(405).json({ error: 'Metodo non consentito' });
  } catch (error: any) {
    console.error('Errore API Notes:', error);
    return res.status(500).json({ error: error?.message || 'Errore database Neon' });
  }
}