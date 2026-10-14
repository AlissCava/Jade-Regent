import type { VercelRequest, VercelResponse } from '@vercel/node';

export const config = { maxDuration: 60 };

function getApiKeys(): string[] {
  const raw = process.env.GEMINI_API_KEY || '';
  return raw.split(',').map(k => k.trim()).filter(Boolean);
}

export default async function handler(req: VercelRequest, res: VercelResponse) {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'POST, OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Origin');

  if (req.method === 'OPTIONS') return res.status(200).end();
  if (req.method !== 'POST') return res.status(405).json({ error: 'Metodo non consentito' });

  const apiKeys = getApiKeys();
  if (apiKeys.length === 0) {
    return res.status(500).json({ error: 'GEMINI_API_KEY non configurata' });
  }

  try {
    const { filename, mimeType, sizeBytes, size } = req.body;
    const finalSize = sizeBytes || size;
    const clientOrigin = req.headers.origin || 'https://jade-regent.vercel.app';

    const startIndex = Math.floor(Math.random() * apiKeys.length);
    let lastError: any = null;

    for (let i = 0; i < apiKeys.length; i++) {
      const keyIndex = (startIndex + i) % apiKeys.length;
      const currentKey = apiKeys[keyIndex];

      const initRes = await fetch(
        `https://generativelanguage.googleapis.com/upload/v1beta/files?key=${currentKey}`,
        {
          method: 'POST',
          headers: {
            'X-Goog-Upload-Protocol': 'resumable',
            'X-Goog-Upload-Command': 'start',
            'X-Goog-Upload-Header-Content-Length': finalSize.toString(),
            'X-Goog-Upload-Header-Content-Type': mimeType || 'audio/mp3',
            'Content-Type': 'application/json',
            'Origin': clientOrigin
          },
          body: JSON.stringify({
            file: { display_name: filename || `Session_${Date.now()}` }
          })
        }
      );

      if (initRes.status === 429) {
        lastError = 'Quota esaurita (429)';
        continue;
      }

      if (!initRes.ok) {
        lastError = await initRes.text();
        continue;
      }

      const uploadUrl = initRes.headers.get('x-goog-upload-url');
      if (!uploadUrl) continue;

      // Ritorna l'uploadUrl e la chiave autorizzata
      return res.status(200).json({ uploadUrl, apiKey: currentKey });
    }

    return res.status(429).json({ error: 'Tutte le chiavi hanno esaurito la quota', details: lastError });
  } catch (err: any) {
    return res.status(500).json({ error: err.message || 'Errore interno' });
  }
}