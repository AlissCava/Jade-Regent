import { Injectable, inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { CharacterRecord, CharacterSheetData } from '../models/character.model';

@Injectable({
  providedIn: 'root'
})
export class CharacterService {
  private http = inject(HttpClient);
  private apiUrl = '/api/characters';

  getCharacter(slug: string): Observable<CharacterRecord> {
    return this.http.get<CharacterRecord>(`${this.apiUrl}?slug=${slug}`);
  }

  saveCharacter(slug: string, level: number, data: CharacterSheetData): Observable<{ success: boolean; character: CharacterRecord }> {
    return this.http.put<{ success: boolean; character: CharacterRecord }>(this.apiUrl, {
      slug,
      level,
      data
    });
  }
}