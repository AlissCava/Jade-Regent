import type { VercelRequest, VercelResponse } from '@vercel/node';

export default async function handler(req: VercelRequest, res: VercelResponse) {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'POST, OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type');

  if (req.method === 'OPTIONS') {
    return res.status(200).end();
  }

  if (req.method !== 'POST') {
    return res.status(405).json({ error: 'Method not allowed' });
  }

  const apiKey = process.env.GEMINI_API_KEY;
  if (!apiKey) {
    return res.status(500).json({ error: 'GEMINI_API_KEY non configurata' });
  }

  try {
    const { filename, mimeType, sizeBytes } = req.body;
    const clientOrigin = req.headers.origin || 'https://jade-regent.vercel.app';

    // Richiesta a Google per aprire il canale di caricamento diretto con CORS abilitato
    const initRes = await fetch(
      `https://generativelanguage.googleapis.com/upload/v1beta/files?key=${apiKey}`,
      {
        method: 'POST',
        headers: {
          'X-Goog-Upload-Protocol': 'resumable',
          'X-Goog-Upload-Command': 'start',
          'X-Goog-Upload-Header-Content-Length': sizeBytes.toString(),
          'X-Goog-Upload-Header-Content-Type': mimeType || 'audio/mp3',
          'Content-Type': 'application/json',
          'Origin': clientOrigin
        },
        body: JSON.stringify({
          file: { display_name: filename || 'Session_Audio' }
        })
      }
    );

    if (!initRes.ok) {
      const err = await initRes.text();
      return res.status(initRes.status).json({ error: 'Errore apertura canale Google', details: err });
    }

    const uploadUrl = initRes.headers.get('x-goog-upload-url');
    if (!uploadUrl) {
      return res.status(500).json({ error: 'Nessun uploadUrl restituito da Google' });
    }

    return res.status(200).json({ uploadUrl });
  } catch (err: any) {
    console.error('Errore upload-session-audio:', err);
    return res.status(500).json({ error: err.message || 'Errore interno' });
  }
}