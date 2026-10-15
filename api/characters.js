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
    // 1. GET: Lettura lista o singolo PG
    if (req.method === 'GET') {
      const slug = req.query.slug;
      if (!slug) {
        const rows = await sql`
          SELECT id, slug, name, class_name, level, data->'character'->>'race' as race, updated_at 
          FROM characters 
          ORDER BY id ASC;
        `;
        return res.status(200).json(rows);
      }

      const rows = await sql`
        SELECT id, slug, name, class_name, level, data, updated_at 
        FROM characters 
        WHERE LOWER(slug) = LOWER(${String(slug).trim()}) 
        LIMIT 1;
      `;
      if (rows.length === 0) return res.status(404).json({ error: 'Personaggio non trovato' });
      return res.status(200).json(rows[0]);
    }

    // 2. PUT o POST: Salvataggio, Modifica, Level Up con UPSERT sicuro
    if (req.method === 'PUT' || req.method === 'POST') {
      const { slug, name, class_name, level, data } = req.body;
      if (!slug || !data) return res.status(400).json({ error: 'Dati mancanti (slug e data richiesti)' });

      const numLevel = Number(level) || 1;
      const cleanSlug = String(slug).toLowerCase().trim();
      const charName = name || (cleanSlug.charAt(0).toUpperCase() + cleanSlug.slice(1));
      const charClass = class_name || 'Avventuriero';

      const updated = await sql`
        UPDATE characters 
        SET 
          name = COALESCE(${name || null}, name),
          class_name = COALESCE(${class_name || null}, class_name),
          level = ${numLevel},
          data = ${JSON.stringify(data)}::jsonb,
          updated_at = CURRENT_TIMESTAMP
        WHERE LOWER(slug) = ${cleanSlug}
        RETURNING id, slug, name, class_name, level, data, updated_at;
      `;

      if (updated.length > 0) {
        return res.status(200).json({ success: true, character: updated[0] });
      }

      // Se non esiste ancora nel database, crea la riga
      const inserted = await sql`
        INSERT INTO characters (slug, name, class_name, level, data, updated_at)
        VALUES (${cleanSlug}, ${charName}, ${charClass}, ${numLevel}, ${JSON.stringify(data)}::jsonb, CURRENT_TIMESTAMP)
        RETURNING id, slug, name, class_name, level, data, updated_at;
      `;
      return res.status(200).json({ success: true, character: inserted[0] });
    }

    // 3. DELETE: Eliminazione
    if (req.method === 'DELETE') {
      const slug = req.query.slug || req.body?.slug;
      if (!slug) return res.status(400).json({ error: 'Slug richiesto' });

      await sql`DELETE FROM characters WHERE LOWER(slug) = LOWER(${String(slug).trim()});`;
      return res.status(200).json({ success: true, message: `Scheda eliminata` });
    }

    return res.status(405).json({ error: 'Metodo non consentito' });
  } catch (err) {
    console.error('Database Error:', err);
    return res.status(500).json({ error: 'Errore server', details: err.message });
  }
}