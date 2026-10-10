import type { VercelRequest, VercelResponse } from '@vercel/node';
import { neon } from '@neondatabase/serverless';

export default async function handler(req: VercelRequest, res: VercelResponse) {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'GET, OPTIONS');
  res.setHeader('Content-Type', 'application/json');

  if (req.method === 'OPTIONS') {
    return res.status(200).end();
  }

  const databaseUrl = process.env.DATABASE_URL;
  if (!databaseUrl) {
    return res.status(500).json({ error: 'DATABASE_URL non configurata' });
  }

  try {
    const sql = neon(databaseUrl);
    const rows = await sql`SELECT * FROM spells ORDER BY name ASC;`;
    return res.status(200).json(rows);
  } catch (error: any) {
    console.error('Errore query spells:', error);
    return res.status(500).json({ error: 'Errore query database', details: error?.message || error });
  }
}