import { Component, OnInit, OnDestroy, inject, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import { Subject, interval } from 'rxjs';
import { takeUntil, filter } from 'rxjs/operators';

export type CombatantType = 'pc' | 'npc' | 'enemy' | 'ally';

export interface Combatant {
  id: string;
  name: string;
  type: CombatantType;
  initiative: number;
  conditions: string[];
  damage?: number;
  is_ko?: boolean;
  tempDamageInput?: number;
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

  // Form rapido: scelta se inserire Nemico o Alleato
  newCombatantType: 'enemy' | 'ally' = 'enemy';
  newEnemyName = '';
  newEnemyInit: number | null = 10;

  isLoading = signal<boolean>(true);
  isSaving = signal<boolean>(false);

  // Tracciamento attività e focus per impedire reset mentre si digita
  private lastUserActionTime = 0;
  focusedCombatantId = signal<string | null>(null);

  ngOnInit(): void {
    this.loadEncounter();

    // LIVE POLLING: ogni 2 secondi
    interval(2000)
      .pipe(
        takeUntil(this.destroy$),
        // Non fa richieste e non disturba se la scheda è in background, se sta salvando o se l'utente sta digitando
        filter(() => document.visibilityState === 'visible' && !this.isSaving() && !this.isUserTyping())
      )
      .subscribe(() => {
        this.syncEncounterInBackground();
      });
  }

  ngOnDestroy(): void {
    this.destroy$.next();
    this.destroy$.complete();
  }

  // Rileva se un elemento di input/textarea ha il focus
  private isUserTyping(): boolean {
    if (typeof document === 'undefined') return false;
    const active = document.activeElement;
    if (!active) return false;
    const tag = active.tagName?.toLowerCase();
    return tag === 'input' || tag === 'textarea' || active.getAttribute('contenteditable') === 'true';
  }

  touchUserActivity(): void {
    this.lastUserActionTime = Date.now();
  }

  // --- SINCRONIZZAZIONE E CARICAMENTO ---
  loadEncounter(): void {
    this.http.get<CombatEncounter>('/api/initiative').subscribe({
      next: (data) => {
        this.applyEncounterData(data, false);
        this.isLoading.set(false);
      },
      error: (err) => {
        console.error('Errore caricamento iniziativa:', err);
        this.isLoading.set(false);
      }
    });
  }

  private syncEncounterInBackground(): void {
    // Se l'utente ha toccato o digitato qualcosa negli ultimi 3.5 secondi, salta il refresh
    if (this.isUserTyping() || Date.now() - this.lastUserActionTime < 3500) {
      return;
    }

    this.http.get<CombatEncounter>('/api/initiative').subscribe({
      next: (data) => {
        const currentJson = JSON.stringify({
          r: this.currentRound(),
          t: this.activeTurnIndex(),
          c: this.combatants().map(c => ({ id: c.id, init: c.initiative, dmg: c.damage, ko: c.is_ko, type: c.type }))
        });

        const incomingJson = JSON.stringify({
          r: data.current_round,
          t: data.active_turn_index,
          c: (data.combatants || []).map(c => ({ id: c.id, init: c.initiative, dmg: c.damage, ko: c.is_ko, type: c.type }))
        });

        if (currentJson !== incomingJson) {
          this.applyEncounterData(data, true);
        }
      },
      error: (err) => console.error('Errore sync iniziativa:', err)
    });
  }

  private applyEncounterData(data: CombatEncounter, isFromPolling: boolean): void {
    this.encounter.set(data);
    this.currentRound.set(data.current_round || 1);
    this.activeTurnIndex.set(data.active_turn_index || 0);

    const focusedId = this.focusedCombatantId();
    const localMap = new Map(this.combatants().map(c => [c.id, c]));

    const mergedList = (data.combatants || []).map(serverC => {
      const localC = localMap.get(serverC.id);
      // Se il combattente è in fase di modifica locale, protegge il valore digitato
      const isBeingEdited = focusedId === serverC.id;

      return {
        ...serverC,
        initiative: isBeingEdited && localC ? localC.initiative : serverC.initiative,
        damage: serverC.damage ?? 0,
        is_ko: serverC.is_ko ?? false,
        tempDamageInput: isBeingEdited && localC ? localC.tempDamageInput : (serverC.tempDamageInput ?? 0)
      };
    });

    // Se stiamo ricevendo un polling e l'utente ha aperto un campo, non riordina per non far saltare la card sotto le dita
    if (isFromPolling && this.isUserTyping()) {
      this.combatants.set(mergedList);
    } else {
      this.combatants.set(this.sortCombatantsList(mergedList));
    }
  }

  private saveCurrentState(): void {
    const enc = this.encounter();
    if (!enc) return;

    this.touchUserActivity();
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

  // --- FORM AGGIUNTA NEMICO / ALLEATO ---
  setNewCombatantType(type: 'enemy' | 'ally'): void {
    this.newCombatantType = type;
    this.touchUserActivity();
  }

  addCombatant(): void {
    const name = this.newEnemyName.trim();
    if (!name) return;

    this.touchUserActivity();
    const newEntry: Combatant = {
      id: `${this.newCombatantType}_${Date.now()}`,
      name,
      type: this.newCombatantType,
      initiative: Number(this.newEnemyInit) || 0,
      conditions: [],
      damage: 0,
      is_ko: false,
      tempDamageInput: 0
    };

    const updated = this.sortCombatantsList([...this.combatants(), newEntry]);
    this.combatants.set(updated);
    this.newEnemyName = '';
    this.newEnemyInit = 10;
    this.saveCurrentState();
  }

  removeCombatant(id: string): void {
    this.touchUserActivity();
    const updated = this.combatants().filter(c => c.id !== id);
    this.combatants.set(updated);
    if (this.activeTurnIndex() >= updated.length) {
      this.activeTurnIndex.set(Math.max(0, updated.length - 1));
    }
    this.saveCurrentState();
  }

  // --- EDITING INIZIATIVA IN CARD ---
  onInitiativeInput(c: Combatant, newVal: any): void {
    this.touchUserActivity();
    c.initiative = Number(newVal) || 0;
  }

  onInputFocus(combatantId: string): void {
    this.touchUserActivity();
    this.focusedCombatantId.set(combatantId);
  }

  onInitiativeBlur(c: Combatant): void {
    this.touchUserActivity();
    this.focusedCombatantId.set(null);
    this.saveCurrentState();
  }

  sortCombatants(): void {
    this.touchUserActivity();
    this.combatants.update(list => this.sortCombatantsList(list));
    this.saveCurrentState();
  }

  private sortCombatantsList(list: Combatant[]): Combatant[] {
    return [...list].sort((a, b) => {
      // Gli NPC della carovana restano sempre in fondo al round (iniziativa < -50)
      if (a.initiative < -50 && b.initiative < -50) {
        return b.initiative - a.initiative;
      }
      if (a.initiative < -50) return 1;
      if (b.initiative < -50) return -1;
      return b.initiative - a.initiative;
    });
  }

  // --- GESTIONE DANNI (PER NEMICI, ALLEATI E CAROVANA) ---
  addQuickDamage(c: Combatant, delta: number): void {
    this.touchUserActivity();
    c.damage = Math.max(0, (c.damage || 0) + delta);
    this.saveCurrentState();
  }

  applyInputDamage(c: Combatant): void {
    this.touchUserActivity();
    const amount = Number(c.tempDamageInput);
    if (!isNaN(amount) && amount !== 0) {
      c.damage = Math.max(0, (c.damage || 0) + amount);
      c.tempDamageInput = 0;
      this.saveCurrentState();
    }
  }

  setKo(c: Combatant, isKo: boolean): void {
    this.touchUserActivity();
    c.is_ko = isKo;
    this.saveCurrentState();
  }

  resetCombat(): void {
    const enc = this.encounter();
    if (!enc) return;

    if (confirm('Vuoi davvero resettare lo scontro al Round 1 e rimuovere nemici e alleati extra?')) {
      this.http.post<CombatEncounter>('/api/initiative', { id: enc.id }).subscribe({
        next: (resetData) => {
          this.applyEncounterData(resetData, false);
        },
        error: (err) => console.error('Errore reset scontro:', err)
      });
    }
  }
}