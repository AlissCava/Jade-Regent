import { Injectable, inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { firstValueFrom } from 'rxjs';
import { CombatEncounter } from '../models/initiative.model';

@Injectable({ providedIn: 'root' })
export class InitiativeService {
  private http = inject(HttpClient);
  private apiUrl = '/api/initiative';

  async getActiveCombat(): Promise<CombatEncounter> {
    return firstValueFrom(this.http.get<CombatEncounter>(this.apiUrl));
  }

  async saveCombat(encounter: CombatEncounter): Promise<CombatEncounter> {
    return firstValueFrom(this.http.put<CombatEncounter>(this.apiUrl, encounter));
  }

  async resetCombat(id: number): Promise<CombatEncounter> {
    return firstValueFrom(this.http.post<CombatEncounter>(this.apiUrl, { id }));
  }
}