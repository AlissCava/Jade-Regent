import type { VercelRequest, VercelResponse } from '@vercel/node';

export default async function handler(req: VercelRequest, res: VercelResponse) {
  // Gestione CORS
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

    if (!sizeBytes || !mimeType) {
      return res.status(400).json({ error: 'Parametri mancanti (sizeBytes, mimeType)' });
    }

    // Inizia la sessione di caricamento diretto verso Google AI File API
    const initResponse = await fetch(
      `https://generativelanguage.googleapis.com/upload/v1beta/files?key=${apiKey}`,
      {
        method: 'POST',
        headers: {
          'X-Goog-Upload-Protocol': 'resumable',
          'X-Goog-Upload-Command': 'start',
          'X-Goog-Upload-Header-Content-Length': sizeBytes.toString(),
          'X-Goog-Upload-Header-Content-Type': mimeType,
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          file: {
            display_name: filename || 'Session_Audio_Recording'
          }
        })
      }
    );

    if (!initResponse.ok) {
      const errText = await initResponse.text();
      return res.status(initResponse.status).json({ error: 'Errore avvio upload Google', details: errText });
    }

    const uploadUrl = initResponse.headers.get('x-goog-upload-url');
    if (!uploadUrl) {
      return res.status(500).json({ error: 'Header x-goog-upload-url non ricevuto da Google' });
    }

    return res.status(200).json({ uploadUrl });
  } catch (error: any) {
    console.error('Errore API upload-session-audio:', error);
    return res.status(500).json({ error: error.message || 'Errore interno server' });
  }
}