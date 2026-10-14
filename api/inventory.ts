import type { VercelRequest, VercelResponse } from '@vercel/node';
import { neon } from '@neondatabase/serverless';

export const config = { maxDuration: 30 };

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

  try {
    // 1. GET: Recupera Cassa e Lista Oggetti
    if (req.method === 'GET') {
      const treasury = await sql`SELECT * FROM caravan_treasury WHERE id = 1`;
      const items = await sql`
        SELECT * FROM caravan_inventory 
        ORDER BY assigned_to ASC, category ASC, name ASC
      `;
      return res.status(200).json({
        treasury: treasury[0] || { platinum: 0, gold: 0, silver: 0, copper: 0 },
        items
      });
    }

    // 2. POST: Inserimento Oggetto o Aggiornamento Cassa
    if (req.method === 'POST') {
      const { action, item, treasury } = req.body;

      if (action === 'update_treasury' && treasury) {
        const updated = await sql`
          UPDATE caravan_treasury 
          SET platinum = ${treasury.platinum || 0},
              gold = ${treasury.gold || 0},
              silver = ${treasury.silver || 0},
              copper = ${treasury.copper || 0},
              updated_at = CURRENT_TIMESTAMP
          WHERE id = 1
          RETURNING *
        `;
        return res.status(200).json(updated[0]);
      }

      if (item) {
        const inserted = await sql`
          INSERT INTO caravan_inventory (
            name, category, quantity, value_gp, assigned_to, description, is_identified
          ) VALUES (
            ${item.name},
            ${item.category || 'Equipaggiamento'},
            ${item.quantity || 1},
            ${item.value_gp || 0},
            ${item.assigned_to || 'Carovana'},
            ${item.description || ''},
            ${item.is_identified ?? true}
          ) RETURNING *
        `;
        return res.status(201).json(inserted[0]);
      }
    }

    // 3. PUT: Modifica Oggetto
    if (req.method === 'PUT') {
      const { id, name, category, quantity, value_gp, assigned_to, description, is_identified } = req.body;
      const updated = await sql`
        UPDATE caravan_inventory
        SET name = ${name},
            category = ${category},
            quantity = ${quantity},
            value_gp = ${value_gp},
            assigned_to = ${assigned_to},
            description = ${description || ''},
            is_identified = ${is_identified ?? true},
            updated_at = CURRENT_TIMESTAMP
        WHERE id = ${id}
        RETURNING *
      `;
      return res.status(200).json(updated[0]);
    }

    // 4. DELETE: Eliminazione Oggetto
    if (req.method === 'DELETE') {
      const id = req.query.id || req.body?.id;
      if (!id) return res.status(400).json({ error: 'ID mancante' });

      await sql`DELETE FROM caravan_inventory WHERE id = ${Number(id)}`;
      return res.status(200).json({ success: true, deletedId: Number(id) });
    }

    return res.status(405).json({ error: 'Metodo non consentito' });
  } catch (err: any) {
    console.error('Errore API inventory:', err);
    return res.status(500).json({ error: err.message || 'Errore database' });
  }
}