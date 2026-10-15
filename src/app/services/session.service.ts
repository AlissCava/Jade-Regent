import { Injectable, inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { firstValueFrom } from 'rxjs';
import { SessionRecord } from '../models/session.model';

@Injectable({ providedIn: 'root' })
export class SessionService {
  private http = inject(HttpClient);
  private activeApiKey: string = '';

  async getSessions(order: 'desc' | 'asc' = 'desc'): Promise<SessionRecord[]> {
    return firstValueFrom(this.http.get<SessionRecord[]>(`/api/sessions?order=${order}`));
  }

  async updateSession(session: SessionRecord): Promise<SessionRecord> {
    return firstValueFrom(this.http.put<SessionRecord>('/api/sessions', session));
  }

  async deleteSession(id: number): Promise<boolean> {
    await firstValueFrom(this.http.delete(`/api/sessions?id=${id}`));
    return true;
  }

  async initDirectUpload(file: File): Promise<{ uploadUrl: string }> {
    const res = await firstValueFrom(
      this.http.post<{ uploadUrl: string; apiKey: string }>('/api/upload-session-audio', {
        filename: file.name,
        mimeType: file.type || 'audio/mp3',
        sizeBytes: file.size
      })
    );
    this.activeApiKey = res.apiKey;
    return { uploadUrl: res.uploadUrl };
  }

  async uploadAudioFile(uploadUrl: string, file: File, onProgress: (pct: number) => void): Promise<string> {
    return new Promise((resolve, reject) => {
      const xhr = new XMLHttpRequest();
      xhr.open('POST', uploadUrl);
      xhr.setRequestHeader('Content-Type', file.type || 'audio/mp3');
      xhr.setRequestHeader('X-Goog-Upload-Command', 'upload, finalize');
      xhr.setRequestHeader('X-Goog-Upload-Offset', '0');

      xhr.upload.onprogress = (e) => {
        if (e.lengthComputable) {
          const pct = Math.round((e.loaded / e.total) * 100);
          onProgress(pct);
        }
      };

      xhr.onload = () => {
        if (xhr.status >= 200 && xhr.status < 300) {
          try {
            const data = JSON.parse(xhr.responseText);
            const uri = data.file?.uri || data.uri;
            resolve(uri);
          } catch {
            resolve(uploadUrl);
          }
        } else {
          reject(new Error(`Caricamento fallito (${xhr.status})`));
        }
      };

      xhr.onerror = () => reject(new Error('Errore di rete durante il caricamento del file audio'));
      xhr.send(file);
    });
  }

  async processSessionAudio(fileUri: string, sessionDate: string, sessionNumber: number, mimeType: string): Promise<SessionRecord> {
    const apiKey = this.activeApiKey;
    if (!apiKey) throw new Error('Chiave API non disponibile per l\'elaborazione');

    const rawFile = fileUri.includes('files/') ? fileUri.substring(fileUri.indexOf('files/')) : fileUri;
    const resourceName = rawFile.startsWith('files/') ? rawFile : `files/${rawFile}`;

    // 1. Polling stato elaborazione file audio su Google
    let isReady = false;
    for (let i = 0; i < 40; i++) {
      try {
        const check = await fetch(`https://generativelanguage.googleapis.com/v1beta/${resourceName}?key=${apiKey}`);
        if (check.ok) {
          const fileInfo = await check.json();
          if (fileInfo.state === 'ACTIVE') {
            isReady = true;
            break;
          }
          if (fileInfo.state === 'FAILED') throw new Error('Elaborazione del file audio fallita su Google');
        }
      } catch (err: any) {
        if (err.message?.includes('fallita')) throw err;
        console.warn(`[Polling] Errore temporaneo controllo stato file:`, err);
      }
      await new Promise(r => setTimeout(r, 3000));
    }

    if (!isReady) throw new Error('Timeout: il file audio impiega troppo tempo ad elaborarsi su Google');

    const promptText = `
Sei il Cronista della carovana della campagna di Pathfinder 1E "Jade Regent".
Ascolta questa registrazione audio della sessione di gioco di ruolo.

REGOLE CRITICHE:
1. Filtra completamente ed elimina qualsiasi chiacchiera fuori gioco (cibo, vita reale, battute personali, pause).
2. Distingui il metagame dalle azioni narrative: trasforma le discussioni meccaniche sui tiri in narrazione fluida.
3. Riconosci i personaggi e compagni: Ryoujin (samurai Oni-spawn), il lupo Hisui, Airyn (druida), Azoi (magus tengu), Nijena (barda), Kaede (kitsune ninja), Ameiko Kaijitsu, Koya / Zaya, Sandru Vhiski, Shalelu Andosana.
4. Rispondi ESCLUSIVAMENTE con un JSON valido (senza markdown o delimitatori \`\`\`json):
{
  "title": "Titolo epico della sessione",
  "summary": "Resoconto narrativo scorrevole e coinvolgente degli eventi e delle scoperte (3-5 paragrafi)",
  "combat": "Scontri e nemici affrontati, o 'Nessuno scontro rilevante'",
  "loot": "Tesori, monete, armi magiche o oggetti recuperati",
  "npcs": "PNG incontrati o sviluppi importanti",
  "quotes": "Le battute più memorabili, colpi critici o citazioni epiche"
}
`;

    // 2. Chiamata a Gemini 3.8 Flash con auto-retry su congestione (503) e cadute di rete
    let geminiRes: Response | null = null;
    let lastNetworkError: any = null;
    const maxRetries = 3;
    const retryDelays = [4000, 8000, 15000]; // Attese progressive: 4s, 8s, 15s

    for (let attempt = 0; attempt <= maxRetries; attempt++) {
      try {
        lastNetworkError = null;
        geminiRes = await fetch(
          `https://generativelanguage.googleapis.com/v1beta/models/gemini-3.8-flash:generateContent?key=${apiKey}`,
          {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
              contents: [
                {
                  role: 'user',
                  parts: [
                    { 
                      fileData: { 
                        mimeType: mimeType || 'audio/mp3', 
                        fileUri: `https://generativelanguage.googleapis.com/v1beta/${resourceName}` 
                      } 
                    },
                    { text: promptText }
                  ]
                }
              ],
              generationConfig: { responseMimeType: 'application/json' }
            })
          }
        );

        // Se Google risponde 503 (sovraccarico temporaneo) o 429 (rate limit), attende e ritenta
        if ((geminiRes.status === 503 || geminiRes.status === 429) && attempt < maxRetries) {
          console.warn(`[Gemini ${geminiRes.status}] Server saturi. Ritento (${attempt + 1}/${maxRetries}) tra ${retryDelays[attempt] / 1000}s...`);
          await new Promise(r => setTimeout(r, retryDelays[attempt]));
          continue;
        }

        break;
      } catch (networkErr: any) {
        lastNetworkError = networkErr;
        console.warn(`[Network/Fetch] Errore di connessione (${networkErr.message}). Ritento (${attempt + 1}/${maxRetries})...`);
        if (attempt < maxRetries) {
          await new Promise(r => setTimeout(r, retryDelays[attempt]));
          continue;
        }
      }
    }

    if (lastNetworkError && !geminiRes) {
      throw new Error(`Connessione alle API Google interrotta. Disattiva eventuali AdBlocker o controlla la connessione.`);
    }

    if (!geminiRes || !geminiRes.ok) {
      if (geminiRes?.status === 503) {
        throw new Error('I server di Google sono temporaneamente saturi (errore 503). Attendi uno o due minuti e riprova.');
      }
      const err = await geminiRes?.text().catch(() => 'Nessun dettaglio');
      throw new Error(`Errore risposta Gemini: ${err}`);
    }

    const geminiData = await geminiRes.json();
    const rawText = geminiData.candidates?.[0]?.content?.parts?.[0]?.text || '';

    let parsed: any;
    try {
      const jsonMatch = rawText.match(/\{[\s\S]*\}/);
      parsed = JSON.parse(jsonMatch ? jsonMatch[0] : rawText);
    } catch {
      parsed = {
        title: `Sessione ${sessionNumber}`,
        summary: rawText,
        combat: '',
        loot: '',
        npcs: '',
        quotes: ''
      };
    }

    // 3. Salvataggio su Neon DB
    const saved = await firstValueFrom(
      this.http.post<SessionRecord>('/api/sessions', {
        sessionNumber,
        sessionDate,
        title: parsed.title,
        summary: parsed.summary,
        combat: parsed.combat,
        loot: parsed.loot,
        npcs: parsed.npcs,
        quotes: parsed.quotes
      })
    );

    // Pulizia file audio temporaneo su Google
    fetch(`https://generativelanguage.googleapis.com/v1beta/${resourceName}?key=${apiKey}`, { method: 'DELETE' }).catch(() => {});

    return saved;
  }
}