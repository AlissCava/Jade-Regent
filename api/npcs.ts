import { neon } from '@neondatabase/serverless';

export const config = { runtime: 'nodejs' };

export default async function handler(req: any, res: any) {
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
    // 1. GET: Lettura di tutti gli NPC o di un singolo record tramite slug
    if (req.method === 'GET') {
      const slug = req.query.slug;

      if (slug) {
        const rows = await sql`
          SELECT * FROM npcs 
          WHERE LOWER(slug) = LOWER(${String(slug).trim()}) 
          LIMIT 1;
        `;
        if (rows.length === 0) return res.status(404).json({ error: 'NPC non trovato' });
        return res.status(200).json(rows[0]);
      }

      // Restituisce tutti gli elementi ordinati per luogo e nome
      const rows = await sql`
        SELECT * FROM npcs 
        ORDER BY 
          CASE WHEN location = 'Gruppo' THEN 0 ELSE 1 END,
          location ASC,
          first_name ASC;
      `;
      return res.status(200).json(rows);
    }

    // 2. PUT o POST: Aggiornamento o Creazione (UPSERT)
    if (req.method === 'PUT' || req.method === 'POST') {
      const {
        slug,
        first_name,
        last_name,
        alter_ego,
        location,
        category,
        description,
        image_url,
        status,
        notes,
        combat_stats
      } = req.body;

      if (!slug || !first_name) {
        return res.status(400).json({ error: 'Slug e Nome obbligatori' });
      }

      const cleanSlug = String(slug).toLowerCase().trim();

      const rows = await sql`
        INSERT INTO npcs (
          slug, first_name, last_name, alter_ego, location, category,
          description, image_url, status, notes, combat_stats, updated_at
        ) VALUES (
          ${cleanSlug},
          ${first_name},
          ${last_name || null},
          ${alter_ego || null},
          ${location || 'Gruppo'},
          ${category || 'NPC'},
          ${description || ''},
          ${image_url || null},
          ${status || 'alive'},
          ${notes || null},
          ${JSON.stringify(combat_stats || {})}::jsonb,
          CURRENT_TIMESTAMP
        )
        ON CONFLICT (slug) DO UPDATE
        SET
          first_name = EXCLUDED.first_name,
          last_name = EXCLUDED.last_name,
          alter_ego = EXCLUDED.alter_ego,
          location = EXCLUDED.location,
          category = EXCLUDED.category,
          description = EXCLUDED.description,
          image_url = EXCLUDED.image_url,
          status = EXCLUDED.status,
          notes = EXCLUDED.notes,
          combat_stats = EXCLUDED.combat_stats,
          updated_at = CURRENT_TIMESTAMP
        RETURNING *;
      `;

      return res.status(200).json({ success: true, npc: rows[0] });
    }

    // 3. DELETE: Eliminazione
    if (req.method === 'DELETE') {
      const slug = req.query.slug || req.body?.slug;
      if (!slug) return res.status(400).json({ error: 'Slug obbligatorio' });

      await sql`DELETE FROM npcs WHERE LOWER(slug) = LOWER(${String(slug).trim()});`;
      return res.status(200).json({ success: true, message: 'NPC eliminato' });
    }

    return res.status(405).json({ error: 'Metodo non consentito' });
  } catch (err: any) {
    console.error('Errore API NPCs:', err);
    return res.status(500).json({ error: 'Errore database Neon', details: err.message });
  }
}
