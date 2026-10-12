import { Injectable, inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { SessionRecord } from '../models/session.model';

@Injectable({
  providedIn: 'root'
})
export class SessionService {
  private http = inject(HttpClient);
  private apiUrl = '/api/sessions';
  private uploadInitUrl = '/api/upload-session-audio';

  // 1. Lettura sessioni ordinate per data
  getSessions(order: 'asc' | 'desc' = 'desc'): Observable<SessionRecord[]> {
    return this.http.get<SessionRecord[]>(`${this.apiUrl}?order=${order}`);
  }

  // 2. Aggiornamento manuale (modifica correttiva)
  updateSession(session: SessionRecord): Observable<SessionRecord> {
    return this.http.put<SessionRecord>(this.apiUrl, session);
  }

  // 3. Eliminazione sessione
  deleteSession(id: number): Observable<{ success: boolean; deletedId: number }> {
    return this.http.delete<{ success: boolean; deletedId: number }>(`${this.apiUrl}?id=${id}`);
  }

  // 4. Inizio upload diretto verso Google AI (bypassa il limite di 4.5 MB di Vercel)
  initDirectUpload(file: File): Observable<{ uploadUrl: string }> {
    return this.http.post<{ uploadUrl: string }>(this.uploadInitUrl, {
      filename: file.name,
      mimeType: file.type || 'audio/mp3',
      sizeBytes: file.size
    });
  }

  // 5. Upload effettivo del file con tracciamento percentuale
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
            // Restituisce l'URI del file su Google AI
            resolve(res.file?.uri || res.file?.name);
          } catch {
            resolve('');
          }
        } else {
          reject(new Error(`Errore upload file: ${xhr.status} ${xhr.statusText}`));
        }
      };

      xhr.onerror = () => reject(new Error('Errore di rete durante il caricamento audio'));
      xhr.send(file);
    });
  }

  // 6. Invio a Gemini e salvataggio su Neon
  processSessionAudio(fileUri: string, sessionDate: string, sessionNumber: number): Observable<SessionRecord> {
    return this.http.post<SessionRecord>(this.apiUrl, {
      fileUri,
      sessionDate,
      sessionNumber
    });
  }
}