import type { VercelRequest, VercelResponse } from '@vercel/node';

export const config = { maxDuration: 60 };

export default async function handler(req: VercelRequest, res: VercelResponse) {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'POST, OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Origin');

  if (req.method === 'OPTIONS') return res.status(200).end();
  if (req.method !== 'POST') return res.status(405).json({ error: 'Metodo non consentito' });

  // Utilizza esclusivamente la chiave attiva (rimuove eventuali spazi o virgole residue)
  const apiKey = (process.env.GEMINI_API_KEY || '').split(',')[0].trim();
  if (!apiKey) {
    return res.status(500).json({ error: 'GEMINI_API_KEY non configurata su Vercel' });
  }

  try {
    const { filename, mimeType, sizeBytes, size } = req.body;
    const finalSize = sizeBytes || size;

    if (!finalSize) {
      return res.status(400).json({ error: 'Parametro dimensione file (sizeBytes) mancante' });
    }

    const clientOrigin = req.headers.origin || 'https://jade-regent.vercel.app';

    // Inizializza l'upload diretto su Google con l'unica chiave abilitata
    const initRes = await fetch(
      `https://generativelanguage.googleapis.com/upload/v1beta/files?key=${apiKey}`,
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

    if (!initRes.ok) {
      const err = await initRes.text();
      return res.status(initRes.status).json({ error: 'Errore apertura canale Google', details: err });
    }

    const uploadUrl = initRes.headers.get('x-goog-upload-url');
    if (!uploadUrl) {
      return res.status(500).json({ error: 'Nessun uploadUrl restituito da Google' });
    }

    // Restituisce l'URL di upload e l'unica chiave autorizzata per Gemini
    return res.status(200).json({ uploadUrl, apiKey });
  } catch (err: any) {
    console.error('Errore upload-session-audio:', err);
    return res.status(500).json({ error: err.message || 'Errore interno' });
  }
}