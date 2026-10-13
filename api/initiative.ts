import { neon } from '@neondatabase/serverless';

export const config = { runtime: 'nodejs' };

const DEFAULT_PARTY = [
  // PERSONAGGI GIOCANTI
  { id: 'pc_ryoujin', name: 'Ryoujin', type: 'pc', initiative: 0, conditions: [] },
  { id: 'pc_nijena', name: 'Nijena', type: 'pc', initiative: 0, conditions: [] },
  { id: 'pc_azoi', name: 'Azoi', type: 'pc', initiative: 0, conditions: [] },
  { id: 'pc_airyn', name: 'Airyn', type: 'pc', initiative: 0, conditions: [] },
  { id: 'pc_kaede', name: 'Kaede', type: 'pc', initiative: 0, conditions: [] },

  // PNG CAROVANA (Sempre in fondo al round in quest'ordine)
  { id: 'npc_ameiko', name: 'Ameiko', type: 'npc', initiative: -100, conditions: [] },
  { id: 'npc_zaya', name: 'Zaya', type: 'npc', initiative: -101, conditions: [] },
  { id: 'npc_sandru', name: 'Sandru', type: 'npc', initiative: -102, conditions: [] },
  { id: 'npc_shalelu', name: 'Shalelu', type: 'npc', initiative: -103, conditions: [] }
];

export default async function handler(req: any, res: any) {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, OPTIONS');
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
    // GET: Recupera lo scontro attivo o ne inizializza uno con il party
    if (req.method === 'GET') {
      const rows = await sql`
        SELECT * FROM combat_encounters 
        WHERE is_active = TRUE 
        ORDER BY id DESC LIMIT 1
      `;

      if (rows.length > 0) {
        return res.status(200).json(rows[0]);
      }

      // Se non esiste ancora uno scontro, creane uno di default
      const inserted = await sql`
        INSERT INTO combat_encounters (title, current_round, active_turn_index, is_active, combatants)
        VALUES ('Scontro della Carovana', 1, 0, TRUE, ${JSON.stringify(DEFAULT_PARTY)}::jsonb)
        RETURNING *
      `;
      return res.status(200).json(inserted[0]);
    }

    // PUT: Salva lo stato del combattimento (round, turno, danni nemici, modifiche)
    if (req.method === 'PUT') {
      const { id, title, current_round, active_turn_index, combatants } = req.body;

      const updated = await sql`
        UPDATE combat_encounters 
        SET 
          title = COALESCE(${title}, title),
          current_round = ${current_round ?? 1},
          active_turn_index = ${active_turn_index ?? 0},
          combatants = ${JSON.stringify(combatants)}::jsonb,
          updated_at = CURRENT_TIMESTAMP
        WHERE id = ${id}
        RETURNING *
      `;

      if (updated.length === 0) {
        return res.status(404).json({ error: 'Scontro non trovato' });
      }

      return res.status(200).json(updated[0]);
    }

    // POST: Reset scontro (ripristina Party e NPC e pulisce i nemici)
    if (req.method === 'POST') {
      const { id } = req.body;
      const resetState = await sql`
        UPDATE combat_encounters 
        SET 
          current_round = 1,
          active_turn_index = 0,
          combatants = ${JSON.stringify(DEFAULT_PARTY)}::jsonb,
          updated_at = CURRENT_TIMESTAMP
        WHERE id = ${id}
        RETURNING *
      `;
      return res.status(200).json(resetState[0]);
    }

    return res.status(405).json({ error: 'Metodo non consentito' });
  } catch (err: any) {
    console.error('Errore Tracker Iniziativa:', err);
    return res.status(500).json({ error: err.message || 'Errore database Neon' });
  }
}