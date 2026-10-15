import { Injectable, inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { CharacterRecord, CharacterSheetData, CharacterSummary } from '../models/character.model';

export type { CharacterSummary, CharacterRecord, CharacterSheetData };

@Injectable({
  providedIn: 'root'
})
export class CharacterService {
  private http = inject(HttpClient);
  private apiUrl = '/api/characters';

  // Ottiene l'elenco riassuntivo di tutti i personaggi per la pagina del party
  getAllCharacters(): Observable<CharacterSummary[]> {
    return this.http.get<CharacterSummary[]>(this.apiUrl);
  }

  // Ottiene la scheda completa del singolo personaggio tramite slug (es. 'airyn', 'nijena')
  getCharacter(slug: string): Observable<CharacterRecord> {
    return this.http.get<CharacterRecord>(`${this.apiUrl}?slug=${slug}`);
  }

  // Crea da zero un nuovo personaggio
  createCharacter(payload: { slug: string; name: string; class_name: string; level: number; data: CharacterSheetData }): Observable<{ success: boolean; character: CharacterRecord }> {
    return this.http.post<{ success: boolean; character: CharacterRecord }>(this.apiUrl, payload);
  }

  // Salva online le modifiche o il Level Up su Neon
  saveCharacter(slug: string, level: number, data: CharacterSheetData, name?: string, class_name?: string): Observable<{ success: boolean; character: CharacterRecord }> {
    return this.http.put<{ success: boolean; character: CharacterRecord }>(this.apiUrl, {
      slug,
      name,
      class_name,
      level,
      data
    });
  }

  // Elimina una scheda personaggio
  deleteCharacter(slug: string): Observable<{ success: boolean }> {
    return this.http.delete<{ success: boolean }>(`${this.apiUrl}?slug=${slug}`);
  }
}