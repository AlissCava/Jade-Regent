import type { VercelRequest, VercelResponse } from '@vercel/node';

export const config = {
  api: {
    bodyParser: {
      sizeLimit: '4.5mb'
    }
  }
};

export default async function handler(req: VercelRequest, res: VercelResponse) {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'POST, OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type, X-Upload-Url, X-Upload-Offset, X-Upload-Command');

  if (req.method === 'OPTIONS') {
    return res.status(200).end();
  }

  if (req.method !== 'POST') {
    return res.status(405).json({ error: 'Method not allowed' });
  }

  const apiKey = process.env.GEMINI_API_KEY;
  if (!apiKey) {
    return res.status(500).json({ error: 'GEMINI_API_KEY non configurata in Production su Vercel' });
  }

  try {
    const action = req.query.action || 'start';

    // 1. INIZIALIZZAZIONE UPLOAD CON GOOGLE
    if (action === 'start') {
      const { filename, mimeType, sizeBytes } = req.body;

      const initRes = await fetch(
        `https://generativelanguage.googleapis.com/upload/v1beta/files?key=${apiKey}`,
        {
          method: 'POST',
          headers: {
            'X-Goog-Upload-Protocol': 'resumable',
            'X-Goog-Upload-Command': 'start',
            'X-Goog-Upload-Header-Content-Length': sizeBytes.toString(),
            'X-Goog-Upload-Header-Content-Type': mimeType || 'audio/mp3',
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({
            file: { display_name: filename || 'Session_Audio' }
          })
        }
      );

      if (!initRes.ok) {
        const err = await initRes.text();
        return res.status(initRes.status).json({ error: 'Errore Google init', details: err });
      }

      const uploadUrl = initRes.headers.get('x-goog-upload-url');
      return res.status(200).json({ uploadUrl });
    }

    // 2. INOLTRO DEL BLOCCO (CHUNK) A GOOGLE (Server-to-Server, NO CORS)
    if (action === 'chunk') {
      const uploadUrl = req.headers['x-upload-url'] as string;
      const offset = req.headers['x-upload-offset'] as string;
      const command = req.headers['x-upload-command'] as string; // 'upload' o 'upload, finalize'

      if (!uploadUrl) {
        return res.status(400).json({ error: 'Manca header x-upload-url' });
      }

      const chunkBuffer = Buffer.from(req.body.chunkBase64, 'base64');

      const googleRes = await fetch(uploadUrl, {
        method: 'POST',
        headers: {
          'Content-Length': chunkBuffer.length.toString(),
          'X-Goog-Upload-Offset': offset,
          'X-Goog-Upload-Command': command
        },
        body: chunkBuffer
      });

      if (!googleRes.ok) {
        const err = await googleRes.text();
        return res.status(googleRes.status).json({ error: 'Errore caricamento chunk su Google', details: err });
      }

      const data = await googleRes.json().catch(() => ({}));
      return res.status(200).json(data);
    }

    return res.status(400).json({ error: 'Azione sconosciuta' });
  } catch (error: any) {
    console.error('Errore upload-session-audio:', error);
    return res.status(500).json({ error: error.message || 'Errore interno server' });
  }
}