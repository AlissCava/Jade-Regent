import { neon } from '@neondatabase/serverless';

export default async function handler(req, res) {
  res.setHeader('Access-Control-Allow-Credentials', true);
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'GET,OPTIONS,PUT,POST');
  res.setHeader('Access-Control-Allow-Headers', 'X-CSRF-Token, X-Requested-With, Accept, Accept-Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version');

  if (req.method === 'OPTIONS') {
    return res.status(200).end();
  }

  const sql = neon(process.env.DATABASE_URL);

  try {
    // 1. LETTURA SCHEDA
    if (req.method === 'GET') {
      const slug = req.query.slug || 'ryoujin';
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

    // 2. SALVATAGGIO / AGGIORNAMENTO SCHEDA (LEVEL UP O MODIFICHE)
    if (req.method === 'PUT' || req.method === 'POST') {
      const { slug, level, data } = req.body;

      if (!slug || !data) {
        return res.status(400).json({ error: 'Dati mancanti (slug e data richiesti)' });
      }

      const rows = await sql`
        UPDATE characters 
        SET 
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

    return res.status(405).json({ error: 'Metodo non consentito' });
  } catch (err) {
    console.error('Database Error:', err);
    return res.status(500).json({ error: 'Errore interno del server', details: err.message });
  }
}