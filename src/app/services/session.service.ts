import { Injectable } from '@angular/core';
import { SessionRecord } from '../models/session.model';

@Injectable({
  providedIn: 'root'
})
export class SessionService {
  private apiUrl = '/api/sessions';
  private uploadInitUrl = '/api/upload-session-audio';

  async getSessions(order: 'asc' | 'desc' = 'desc'): Promise<SessionRecord[]> {
    const res = await fetch(`${this.apiUrl}?order=${order}`);
    if (!res.ok) {
      const err = await res.json().catch(() => ({}));
      throw new Error(err.details || err.error || `Errore server ${res.status}`);
    }
    return res.json();
  }

  async updateSession(session: SessionRecord): Promise<SessionRecord> {
    const res = await fetch(this.apiUrl, {
      method: 'PUT',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(session)
    });
    if (!res.ok) throw new Error('Errore aggiornamento sessione');
    return res.json();
  }

  async deleteSession(id: number): Promise<boolean> {
    const res = await fetch(`${this.apiUrl}?id=${id}`, { method: 'DELETE' });
    return res.ok;
  }

  // Chiede l'URL temporaneo a Vercel
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
    if (!res.ok) {
      const err = await res.json().catch(() => ({}));
      throw new Error(err.details || err.error || 'Errore inizializzazione upload Google');
    }
    return res.json();
  }

  // Invia il file GIGANTE direttamente dal browser a Google senza passare dai limiti Vercel
  uploadAudioFile(uploadUrl: string, file: File, onProgress: (pct: number) => void): Promise<string> {
    return new Promise((resolve, reject) => {
      const xhr = new XMLHttpRequest();
      xhr.open('POST', uploadUrl, true);
      
      // Header ufficiali Google Resumable Protocol per invio completo
      xhr.setRequestHeader('X-Goog-Upload-Command', 'upload, finalize');
      xhr.setRequestHeader('X-Goog-Upload-Offset', '0');
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
            const data = JSON.parse(xhr.responseText);
            // Restituisce il nome univoco del file su Google (es. files/abc123xyz)
            resolve(data.file?.name || data.file?.uri || '');
          } catch {
            resolve('');
          }
        } else {
          reject(new Error(`Errore upload Google (${xhr.status}):${xhr.responseText}`));
        }
      };

      xhr.onerror = () => reject(new Error('Errore di connessione durante il caricamento audio'));
      xhr.send(file);
    });
  }

  async processSessionAudio(fileUri: string, sessionDate: string, sessionNumber: number, mimeType: string): Promise<SessionRecord> {
    const res = await fetch(this.apiUrl, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ fileUri, sessionDate, sessionNumber, mimeType })
    });
    if (!res.ok) {
      const err = await res.json().catch(() => ({}));
      throw new Error(err.details || err.error || 'Errore elaborazione Gemini');
    }
    return res.json();
  }
}