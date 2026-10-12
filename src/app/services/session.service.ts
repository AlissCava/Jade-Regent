import { Injectable } from '@angular/core';
import { SessionRecord } from '../models/session.model';

@Injectable({
  providedIn: 'root'
})
export class SessionService {
  private apiUrl = '/api/sessions';
  private uploadInitUrl = '/api/upload-session-audio';

  // 1. Lettura sessioni
  async getSessions(order: 'asc' | 'desc' = 'desc'): Promise<SessionRecord[]> {
    const res = await fetch(`${this.apiUrl}?order=${order}`);
    if (!res.ok) throw new Error('Errore caricamento sessioni');
    return res.json();
  }

  // 2. Modifica manuale
  async updateSession(session: SessionRecord): Promise<SessionRecord> {
    const res = await fetch(this.apiUrl, {
      method: 'PUT',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(session)
    });
    if (!res.ok) throw new Error('Errore aggiornamento sessione');
    return res.json();
  }

  // 3. Eliminazione
  async deleteSession(id: number): Promise<boolean> {
    const res = await fetch(`${this.apiUrl}?id=${id}`, { method: 'DELETE' });
    return res.ok;
  }

  // 4. Inizio upload diretto verso Google
  async initDirectUpload(file: File): Promise<{ uploadUrl: string }> {
    const res = await fetch(this.uploadInitUrl, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        filename: file.name,
        mimeType: file.type || 'audio/mp3',
        sizeBytes: file.size
      })
    });
    if (!res.ok) throw new Error('Errore avvio upload Google');
    return res.json();
  }

  // 5. Upload del file pesante con barra di avanzamento
  uploadAudioFile(uploadUrl: string, file: File, onProgress: (pct: number) => void): Promise<string> {
    return new Promise((resolve, reject) => {
      const xhr = new XMLHttpRequest();
      xhr.open('PUT', uploadUrl, true);
      xhr.setRequestHeader('Content-Type', file.type || 'audio/mp3');

      xhr.upload.onprogress = (event) => {
        if (event.lengthComputable) {
          const percent = Math.round((event.loaded / event.total) * 100);
          onProgress(percent);
        }
      };

      xhr.onload = () => {
        if (xhr.status >= 200 && xhr.status < 300) {
          try {
            const res = JSON.parse(xhr.responseText);
            resolve(res.file?.uri || res.file?.name || '');
          } catch {
            resolve('');
          }
        } else {
          reject(new Error(`Errore upload file (${xhr.status})`));
        }
      };

      xhr.onerror = () => reject(new Error('Errore di rete durante upload audio'));
      xhr.send(file);
    });
  }

  // 6. Elaborazione Gemini
  async processSessionAudio(fileUri: string, sessionDate: string, sessionNumber: number): Promise<SessionRecord> {
    const res = await fetch(this.apiUrl, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ fileUri, sessionDate, sessionNumber })
    });
    if (!res.ok) {
      const err = await res.json().catch(() => ({}));
      throw new Error(err.error || 'Errore elaborazione sessione');
    }
    return res.json();
  }
}