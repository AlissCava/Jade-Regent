import type { VercelRequest, VercelResponse } from '@vercel/node';
import { Pool } from '@neondatabase/serverless';

// Pool riutilizza le connessioni evitando sovraccarichi al DB
const pool = new Pool({ connectionString: process.env.DATABASE_URL });

export default async function handler(req: VercelRequest, res: VercelResponse) {
  // Consentiamo solo richieste di lettura HTTP GET
  if (req.method !== 'GET') {
    return res.status(405).json({ error: 'Metodo HTTP non supportato' });
  }

  try {
    const { search, size, bsLevel, pounce } = req.query;

    let queryText = 'SELECT * FROM wild_shapes WHERE 1=1';
    const queryParams: (string | number)[] = [];
    let paramIndex = 1;

    // Filtro di ricerca per nome creatura (case-insensitive)
    if (search && typeof search === 'string') {
      queryText += ` AND name ILIKE $${paramIndex++}`;
      queryParams.push(`%${search}%`);
    }

    // Filtro per taglia (Piccola, Media, Grande...)
    if (size && typeof size === 'string') {
      queryText += ` AND size = $${paramIndex++}`;
      queryParams.push(size);
    }

    // Filtro per livello Forma della Bestia (BS Lv <= X)
    if (bsLevel) {
      queryText += ` AND bs_level <= $${paramIndex++}`;
      queryParams.push(Number(bsLevel));
    }

    // Filtro per Balzare (Pounce)
    if (pounce === 'true') {
      queryText += ` AND has_pounce = TRUE`;
    }

    queryText += ' ORDER BY name ASC';

    // Esecuzione query SQL su Neon
    const client = await pool.connect();
    const result = await client.query(queryText, queryParams);
    client.release();

    return res.status(200).json(result.rows);
  } catch (error) {
    console.error('Errore query Neon:', error);
    return res.status(500).json({ error: 'Errore interno del server' });
  }
}