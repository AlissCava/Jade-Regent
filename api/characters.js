import { neon } from '@neondatabase/serverless';

export default async function handler(req, res) {
  res.setHeader('Access-Control-Allow-Credentials', true);
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'GET,OPTIONS,PUT,POST,DELETE');
  res.setHeader('Access-Control-Allow-Headers', 'X-CSRF-Token, X-Requested-With, Accept, Accept-Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version');

  if (req.method === 'OPTIONS') {
    return res.status(200).end();
  }

  const databaseUrl = process.env.DATABASE_URL;
  if (!databaseUrl) {
    return res.status(500).json({ error: 'DATABASE_URL non configurata' });
  }

  const sql = neon(databaseUrl);

  try {
    // 1. LETTURA (LISTA COMPLETA O SINGOLO PG)
    if (req.method === 'GET') {
      const slug = req.query.slug;

      // Se non c'è slug, restituisci tutti i PG per la lista del party
      if (!slug) {
        const rows = await sql`
          SELECT id, slug, name, class_name, level, data->'character'->>'race' as race, updated_at 
          FROM characters 
          ORDER BY id ASC;
        `;
        return res.status(200).json(rows);
      }

      // Se c'è lo slug, restituisci la scheda completa di quel singolo PG
      const rows = await sql`
        SELECT id, slug, name, class_name, level, data, updated_at 
        FROM characters 
        WHERE slug = ${slug} 
        LIMIT 1;
      `;

      if (rows.length === 0) {
        return res.status(404).json({ error: 'Personaggio non trovato' });
      }

      return res.status(200).json(rows[0]);
    }

    // 2. CREAZIONE NUOVO PERSONAGGIO (POST - con UPSERT)
    if (req.method === 'POST') {
      const { slug, name, class_name, level, data } = req.body;

      if (!slug || !name) {
        return res.status(400).json({ error: 'Slug e Nome obbligatori' });
      }

      const existing = await sql`SELECT id FROM characters WHERE slug = ${slug} LIMIT 1;`;

      let characterRecord;
      if (existing.length > 0) {
        const updated = await sql`
          UPDATE characters 
          SET 
            name = COALESCE(${name}, name),
            class_name = COALESCE(${class_name}, class_name),
            level = COALESCE(${level}, level),
            data = ${JSON.stringify(data)}::jsonb,
            updated_at = CURRENT_TIMESTAMP
          WHERE slug = ${slug}
          RETURNING id, slug, name, class_name, level, data, updated_at;
        `;
        characterRecord = updated[0];
      } else {
        const inserted = await sql`
          INSERT INTO characters (slug, name, class_name, level, data, updated_at)
          VALUES (
            ${slug}, 
            ${name}, 
            ${class_name || 'Avventuriero'}, 
            ${level || 1}, 
            ${JSON.stringify(data)}::jsonb, 
            CURRENT_TIMESTAMP
          )
          RETURNING id, slug, name, class_name, level, data, updated_at;
        `;
        characterRecord = inserted[0];
      }

      return res.status(200).json({ success: true, character: characterRecord });
    }

    // 3. SALVATAGGIO / AGGIORNAMENTO / LEVEL UP (PUT)
    if (req.method === 'PUT') {
      const { slug, name, class_name, level, data } = req.body;

      if (!slug || !data) {
        return res.status(400).json({ error: 'Dati mancanti (slug e data richiesti)' });
      }

      const rows = await sql`
        UPDATE characters 
        SET 
          name = COALESCE(${name}, name),
          class_name = COALESCE(${class_name}, class_name),
          level = COALESCE(${level}, level),
          data = ${JSON.stringify(data)}::jsonb,
          updated_at = CURRENT_TIMESTAMP
        WHERE slug = ${slug}
        RETURNING id, slug, name, class_name, level, data, updated_at;
      `;

      if (rows.length === 0) {
        return res.status(404).json({ error: 'Personaggio non trovato da aggiornare' });
      }

      return res.status(200).json({ success: true, character: rows[0] });
    }

    // 4. ELIMINAZIONE PERSONAGGIO (DELETE)
    if (req.method === 'DELETE') {
      const slug = req.query.slug || req.body?.slug;
      if (!slug) return res.status(400).json({ error: 'Slug richiesto' });

      await sql`DELETE FROM characters WHERE slug = ${slug};`;
      return res.status(200).json({ success: true, message: 'Personaggio eliminato con successo' });
    }

    return res.status(405).json({ error: 'Metodo non consentito' });
  } catch (err) {
    console.error('Database Error:', err);
    return res.status(500).json({ error: 'Errore server', details: err.message });
  }
}