import { Injectable, inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Spell } from '../models/spell.model';

@Injectable({
  providedIn: 'root'
})
export class SpellService {
  private http = inject(HttpClient);

  getSpells(): Observable<Spell[]> {
    return this.http.get<Spell[]>('/api/spells');
  }
}