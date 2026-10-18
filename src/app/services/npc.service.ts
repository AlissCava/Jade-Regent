import { Injectable, inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { NpcRecord } from '../models/npc.model';

@Injectable({
  providedIn: 'root'
})
export class NpcService {
  private http = inject(HttpClient);
  private apiUrl = '/api/npcs';

  getAllNpcs(): Observable<NpcRecord[]> {
    return this.http.get<NpcRecord[]>(this.apiUrl);
  }

  getNpc(slug: string): Observable<NpcRecord> {
    return this.http.get<NpcRecord>(`${this.apiUrl}?slug=${slug}`);
  }

  saveNpc(npc: Partial<NpcRecord>): Observable<{ success: boolean; npc: NpcRecord }> {
    return this.http.put<{ success: boolean; npc: NpcRecord }>(this.apiUrl, npc);
  }

  deleteNpc(slug: string): Observable<{ success: boolean }> {
    return this.http.delete<{ success: boolean }>(`${this.apiUrl}?slug=${slug}`);
  }
}