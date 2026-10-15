import type { VercelRequest, VercelResponse } from '@vercel/node';

export const config = { maxDuration: 60 };

export default async function handler(req: VercelRequest, res: VercelResponse) {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'POST, OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Origin');

  if (req.method === 'OPTIONS') return res.status(200).end();
  if (req.method !== 'POST') return res.status(405).json({ error: 'Metodo non consentito' });

  // Pulisce la chiave da eventuali spazi o ritorni a capo
  const rawKey = process.env.GEMINI_API_KEY || '';
  const apiKey = rawKey.replace(/["']/g, '').split(',')[0].trim();

  if (!apiKey) {
    return res.status(500).json({ error: 'GEMINI_API_KEY non trovata su Vercel' });
  }

  try {
    const { filename, mimeType, sizeBytes, size } = req.body || {};
    const finalSize = Number(sizeBytes || size);

    if (!finalSize || isNaN(finalSize)) {
      return res.status(400).json({ error: 'Dimensione del file mancante o non valida' });
    }

    // Assicura un mimeType valido accettato da Google
    const validMime = (mimeType && mimeType.trim() !== '') ? mimeType : 'audio/mp3';
    const clientOrigin = req.headers.origin || 'https://jade-regent.vercel.app';
    const cleanName = (filename || `Session_${Date.now()}`).replace(/[^a-zA-Z0-9._-]/g, '_');

    // Chiamata con doppio binding della chiave (Query param + Header x-goog-api-key per chiavi AQ.)
    const initRes = await fetch(
      `https://generativelanguage.googleapis.com/upload/v1beta/files?key=${apiKey}`,
      {
        method: 'POST',
        headers: {
          'x-goog-api-key': apiKey,
          'X-Goog-Upload-Protocol': 'resumable',
          'X-Goog-Upload-Command': 'start',
          'X-Goog-Upload-Header-Content-Length': finalSize.toString(),
          'X-Goog-Upload-Header-Content-Type': validMime,
          'Content-Type': 'application/json',
          'Origin': clientOrigin
        },
        body: JSON.stringify({
          file: { display_name: cleanName }
        })
      }
    );

    if (!initRes.ok) {
      const errText = await initRes.text();
      console.error('Google Upload Init Error:', initRes.status, errText);
      return res.status(initRes.status).json({ 
        error: 'Errore apertura canale Google', 
        status: initRes.status,
        details: errText 
      });
    }

    const uploadUrl = initRes.headers.get('x-goog-upload-url');
    if (!uploadUrl) {
      return res.status(500).json({ error: 'Nessun uploadUrl restituito da Google' });
    }

    return res.status(200).json({ uploadUrl, apiKey });
  } catch (err: any) {
    console.error('Errore interno upload-session-audio:', err);
    return res.status(500).json({ error: err.message || 'Errore interno' });
  }
}