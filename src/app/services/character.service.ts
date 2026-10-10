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

  // Ottiene la scheda completa del singolo personaggio tramite slug (es. 'ryoujin')
  getCharacter(slug: string): Observable<CharacterRecord> {
    return this.http.get<CharacterRecord>(`${this.apiUrl}?slug=${slug}`);
  }

  // Salva online le modifiche o il Level Up su Neon
  saveCharacter(slug: string, level: number, data: CharacterSheetData): Observable<{ success: boolean; character: CharacterRecord }> {
    return this.http.put<{ success: boolean; character: CharacterRecord }>(this.apiUrl, {
      slug,
      level,
      data
    });
  }
}