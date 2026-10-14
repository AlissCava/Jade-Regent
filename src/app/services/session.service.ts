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

      xhr.onerror = () => reject(new Error('Errore di rete durante il caricamento'));
      xhr.send(file);
    });
  }

  async processSessionAudio(fileUri: string, sessionDate: string, sessionNumber: number, mimeType: string): Promise<SessionRecord> {
    const apiKey = this.activeApiKey;
    if (!apiKey) throw new Error('Chiave API non disponibile per l\'elaborazione');

    const rawFile = fileUri.includes('files/') ? fileUri.substring(fileUri.indexOf('files/')) : fileUri;
    const resourceName = rawFile.startsWith('files/') ? rawFile : `files/${rawFile}`;

    // 1. Polling eseguito dal browser (nessun limite di 60 secondi)
    let isReady = false;
    for (let i = 0; i < 40; i++) {
      const check = await fetch(`https://generativelanguage.googleapis.com/v1beta/${resourceName}?key=${apiKey}`);
      if (check.ok) {
        const fileInfo = await check.json();
        if (fileInfo.state === 'ACTIVE') {
          isReady = true;
          break;
        }
        if (fileInfo.state === 'FAILED') throw new Error('Elaborazione del file audio fallita su Google');
      }
      await new Promise(r => setTimeout(r, 3000));
    }

    if (!isReady) throw new Error('Timeout: il file audio impiega troppo tempo ad elaborarsi su Google');

    // 2. Chiamata Gemini direttamente dal browser (può durare quanto serve)
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

    const geminiRes = await fetch(
      `https://generativelanguage.googleapis.com/v1beta/models/gemini-3.8-flash:generateContent?key=${apiKey}`,
      {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          contents: [
            {
              role: 'user',
              parts: [
                { fileData: { mimeType: mimeType || 'audio/mp3', fileUri: `https://generativelanguage.googleapis.com/v1beta/${resourceName}` } },
                { text: promptText }
              ]
            }
          ],
          generationConfig: { responseMimeType: 'application/json' }
        })
      }
    );

    if (!geminiRes.ok) {
      const err = await geminiRes.text();
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

    // 3. Salva su Neon DB tramite /api/sessions (impiega solo 50ms)
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