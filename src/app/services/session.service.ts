import { Injectable } from '@angular/core';
import { SessionRecord } from '../models/session.model';

@Injectable({
  providedIn: 'root'
})
export class SessionService {
  private apiUrl = '/api/sessions';
  private uploadUrlEndpoint = '/api/upload-session-audio';

  async getSessions(order: 'asc' | 'desc' = 'desc'): Promise<SessionRecord[]> {
    const res = await fetch(`${this.apiUrl}?order=${order}`);
    if (!res.ok) {
      const err = await res.json().catch(() => ({}));
      throw new Error(err.error || err.details || `Errore ${res.status}`);
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

  // 1. Chiede a Google l'URL di upload tramite la nostra API
  async initDirectUpload(file: File): Promise<{ uploadUrl: string }> {
    const res = await fetch(`${this.uploadUrlEndpoint}?action=start`, {
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
      throw new Error(err.error || err.details || 'Errore inizializzazione Google');
    }
    return res.json();
  }

  // 2. Invia il file a pezzi da 3 MB bypassando CORS e il limite di Vercel
  async uploadAudioFile(uploadUrl: string, file: File, onProgress: (pct: number) => void): Promise<string> {
    const CHUNK_SIZE = 3 * 1024 * 1024; // 3 MB
    const totalBytes = file.size;
    let offset = 0;
    let fileUri = '';

    while (offset < totalBytes) {
      const end = Math.min(offset + CHUNK_SIZE, totalBytes);
      const chunkBlob = file.slice(offset, end);
      const isLast = end >= totalBytes;

      const base64Chunk = await this.blobToBase64(chunkBlob);

      const res = await fetch(`${this.uploadUrlEndpoint}?action=chunk`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'X-Upload-Url': uploadUrl,
          'X-Upload-Offset': offset.toString(),
          'X-Upload-Command': isLast ? 'upload, finalize' : 'upload'
        },
        body: JSON.stringify({ chunkBase64: base64Chunk })
      });

      if (!res.ok) {
        const err = await res.json().catch(() => ({}));
        throw new Error(err.details || err.error || 'Errore durante il caricamento');
      }

      const resData = await res.json().catch(() => ({}));
      if (isLast && resData.file?.uri) {
        fileUri = resData.file.uri;
      }

      offset = end;
      onProgress(Math.round((offset / totalBytes) * 100));
    }

    return fileUri;
  }

  async processSessionAudio(fileUri: string, sessionDate: string, sessionNumber: number): Promise<SessionRecord> {
    const res = await fetch(this.apiUrl, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ fileUri, sessionDate, sessionNumber })
    });
    if (!res.ok) {
      const err = await res.json().catch(() => ({}));
      throw new Error(err.details || err.error || 'Errore elaborazione Gemini');
    }
    return res.json();
  }

  private blobToBase64(blob: Blob): Promise<string> {
    return new Promise((resolve, reject) => {
      const reader = new FileReader();
      reader.onloadend = () => {
        const base64 = (reader.result as string).split(',')[1];
        resolve(base64);
      };
      reader.onerror = reject;
      reader.readAsDataURL(blob);
    });
  }
}