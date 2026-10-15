import { Component, OnInit, OnDestroy, inject, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import { Subject, interval } from 'rxjs';
import { takeUntil, filter } from 'rxjs/operators';

export interface Combatant {
  id: string;
  name: string;
  type: 'pc' | 'npc' | 'enemy';
  initiative: number;
  conditions: string[];
  damage?: number;
  is_ko?: boolean;
  tempDamageInput?: number; // Valore temporaneo dell'input danni
}

export interface CombatEncounter {
  id: number;
  title: string;
  current_round: number;
  active_turn_index: number;
  is_active: boolean;
  combatants: Combatant[];
}

@Component({
  selector: 'app-initiative',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './initiative.html',
  styleUrl: './initiative.scss'
})
export class InitiativeComponent implements OnInit, OnDestroy {
  private http = inject(HttpClient);
  private destroy$ = new Subject<void>();

  encounter = signal<CombatEncounter | null>(null);
  combatants = signal<Combatant[]>([]);
  currentRound = signal<number>(1);
  activeTurnIndex = signal<number>(0);

  // Form rapido per inserimento nemico
  newEnemyName = '';
  newEnemyInit: number | null = 10;

  // Stato di caricamento/salvataggio
  isLoading = signal<boolean>(true);
  isSaving = signal<boolean>(false);

  ngOnInit(): void {
    // 1. Primo caricamento immediato
    this.loadEncounter();

    // 2. LIVE SYNC: Polling ogni 2 secondi
    interval(2000)
      .pipe(
        takeUntil(this.destroy$),
        // Non fa richieste inutili se la schermata del telefono è bloccata o la scheda non è visibile
        filter(() => document.visibilityState === 'visible' && !this.isSaving())
      )
      .subscribe(() => {
        this.syncEncounterInBackground();
      });
  }

  ngOnDestroy(): void {
    this.destroy$.next();
    this.destroy$.complete();
  }

  // --- CARICAMENTO E SINCRONIZZAZIONE ---
  loadEncounter(): void {
    this.http.get<CombatEncounter>('/api/initiative').subscribe({
      next: (data) => {
        this.applyEncounterData(data);
        this.isLoading.set(false);
      },
      error: (err) => {
        console.error('Errore caricamento iniziativa:', err);
        this.isLoading.set(false);
      }
    });
  }

  private syncEncounterInBackground(): void {
    this.http.get<CombatEncounter>('/api/initiative').subscribe({
      next: (data) => {
        const currentJson = JSON.stringify({
          r: this.currentRound(),
          t: this.activeTurnIndex(),
          c: this.combatants().map(c => ({ id: c.id, init: c.initiative, dmg: c.damage, ko: c.is_ko }))
        });

        const incomingJson = JSON.stringify({
          r: data.current_round,
          t: data.active_turn_index,
          c: (data.combatants || []).map(c => ({ id: c.id, init: c.initiative, dmg: c.damage, ko: c.is_ko }))
        });

        // Aggiorna solo se c'è stata una reale modifica dal master o da altri dispositivi
        if (currentJson !== incomingJson) {
          this.applyEncounterData(data);
        }
      },
      error: (err) => console.error('Errore sync polling iniziativa:', err)
    });
  }

  private applyEncounterData(data: CombatEncounter): void {
    this.encounter.set(data);
    this.currentRound.set(data.current_round || 1);
    this.activeTurnIndex.set(data.active_turn_index || 0);

    const list = (data.combatants || []).map(c => ({
      ...c,
      damage: c.damage ?? 0,
      is_ko: c.is_ko ?? false,
      tempDamageInput: c.tempDamageInput ?? 0
    }));

    this.combatants.set(this.sortCombatantsList(list));
  }

  private saveCurrentState(): void {
    const enc = this.encounter();
    if (!enc) return;

    this.isSaving.set(true);

    const payload = {
      id: enc.id,
      title: enc.title,
      current_round: this.currentRound(),
      active_turn_index: this.activeTurnIndex(),
      combatants: this.combatants().map(c => ({
        id: c.id,
        name: c.name,
        type: c.type,
        initiative: c.initiative,
        conditions: c.conditions || [],
        damage: c.damage || 0,
        is_ko: !!c.is_ko
      }))
    };

    this.http.put<CombatEncounter>('/api/initiative', payload).subscribe({
      next: (updated) => {
        this.encounter.set(updated);
        this.isSaving.set(false);
      },
      error: (err) => {
        console.error('Errore salvataggio iniziativa:', err);
        this.isSaving.set(false);
      }
    });
  }

  // --- GESTIONE TURNI E ROUND ---
  nextTurn(): void {
    const list = this.combatants();
    if (list.length === 0) return;

    let nextIndex = this.activeTurnIndex() + 1;
    if (nextIndex >= list.length) {
      nextIndex = 0;
      this.currentRound.update(r => r + 1);
    }

    this.activeTurnIndex.set(nextIndex);
    this.saveCurrentState();
  }

  prevTurn(): void {
    const list = this.combatants();
    if (list.length === 0) return;

    let prevIndex = this.activeTurnIndex() - 1;
    if (prevIndex < 0) {
      prevIndex = list.length - 1;
      this.currentRound.update(r => Math.max(1, r - 1));
    }

    this.activeTurnIndex.set(prevIndex);
    this.saveCurrentState();
  }

  // --- AGGIUNTA NEMICO & ORDINAMENTO ---
  addEnemy(): void {
    const name = this.newEnemyName.trim();
    if (!name) return;

    const newEnemy: Combatant = {
      id: 'enemy_' + Date.now(),
      name,
      type: 'enemy',
      initiative: Number(this.newEnemyInit) || 0,
      conditions: [],
      damage: 0,
      is_ko: false,
      tempDamageInput: 0
    };

    const updated = this.sortCombatantsList([...this.combatants(), newEnemy]);
    this.combatants.set(updated);
    this.newEnemyName = '';
    this.newEnemyInit = 10;
    this.saveCurrentState();
  }

  removeCombatant(id: string): void {
    const updated = this.combatants().filter(c => c.id !== id);
    this.combatants.set(updated);
    if (this.activeTurnIndex() >= updated.length) {
      this.activeTurnIndex.set(Math.max(0, updated.length - 1));
    }
    this.saveCurrentState();
  }

  sortCombatants(): void {
    this.combatants.update(list => this.sortCombatantsList(list));
    this.saveCurrentState();
  }

  private sortCombatantsList(list: Combatant[]): Combatant[] {
    return [...list].sort((a, b) => {
      // Gli NPC restano sempre in fondo al round (iniziativa < -50)
      if (a.initiative < -50 && b.initiative < -50) {
        return b.initiative - a.initiative; // Mantiene ordine Ameiko, Zaya, Sandru, Shalelu
      }
      return b.initiative - a.initiative;
    });
  }

  // --- GESTIONE DANNI (PER NEMICI E PER NPC DELLA CAROVANA) ---
  addQuickDamage(c: Combatant, delta: number): void {
    c.damage = Math.max(0, (c.damage || 0) + delta);
    this.saveCurrentState();
  }

  applyInputDamage(c: Combatant): void {
    const amount = Number(c.tempDamageInput);
    if (!isNaN(amount) && amount !== 0) {
      c.damage = Math.max(0, (c.damage || 0) + amount);
      c.tempDamageInput = 0;
      this.saveCurrentState();
    }
  }

  setKo(c: Combatant, isKo: boolean): void {
    c.is_ko = isKo;
    this.saveCurrentState();
  }

  resetCombat(): void {
    const enc = this.encounter();
    if (!enc) return;

    if (confirm('Vuoi davvero resettare lo scontro al Round 1 e rimuovere i nemici?')) {
      this.http.post<CombatEncounter>('/api/initiative', { id: enc.id }).subscribe({
        next: (resetData) => {
          this.applyEncounterData(resetData);
        },
        error: (err) => console.error('Errore reset scontro:', err)
      });
    }
  }
}