import { Component, OnInit, inject, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { InitiativeService } from '../../services/initiative.service';
import { CombatEncounter, Combatant } from '../../models/initiative.model';

@Component({
  selector: 'app-initiative',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './initiative.html',
  styleUrl: './initiative.scss'
})
export class InitiativeComponent implements OnInit {
  private initService = inject(InitiativeService);

  encounter = signal<CombatEncounter | null>(null);
  loading = signal<boolean>(true);
  isSaving = signal<boolean>(false);

  // Form aggiunta nemico rapido
  newEnemyName: string = '';
  newEnemyInit: number = 10;
  damageInputs: { [id: string]: number } = {};

  async ngOnInit(): Promise<void> {
    await this.loadEncounter();
  }

  async loadEncounter(): Promise<void> {
    this.loading.set(true);
    try {
      const data = await this.initService.getActiveCombat();
      this.encounter.set(data);
    } catch (err) {
      console.error(err);
    } finally {
      this.loading.set(false);
    }
  }

  // Ordinamento: PG e Nemici per iniziativa decrescente, poi NPC della carovana
  sortCombatants(): void {
    const enc = this.encounter();
    if (!enc) return;

    const pcsAndEnemies = enc.combatants
      .filter(c => c.type !== 'npc')
      .sort((a, b) => (b.initiative || 0) - (a.initiative || 0));

    // Ordine fisso per gli NPC
    const npcOrder = ['Ameiko', 'Zaya', 'Sandru', 'Shalelu'];
    const npcs = enc.combatants
      .filter(c => c.type === 'npc')
      .sort((a, b) => npcOrder.indexOf(a.name) - npcOrder.indexOf(b.name));

    enc.combatants = [...pcsAndEnemies, ...npcs];
    enc.active_turn_index = 0;
    this.persist();
  }

  // Avanzamento turni e round
  nextTurn(): void {
    const enc = this.encounter();
    if (!enc || enc.combatants.length === 0) return;

    if (enc.active_turn_index >= enc.combatants.length - 1) {
      enc.active_turn_index = 0;
      enc.current_round += 1;
    } else {
      enc.active_turn_index += 1;
    }
    this.persist();
  }

  prevTurn(): void {
    const enc = this.encounter();
    if (!enc || enc.combatants.length === 0) return;

    if (enc.active_turn_index <= 0) {
      if (enc.current_round > 1) {
        enc.current_round -= 1;
        enc.active_turn_index = enc.combatants.length - 1;
      }
    } else {
      enc.active_turn_index -= 1;
    }
    this.persist();
  }

  // Aggiunta Nemico
  addEnemy(): void {
    const enc = this.encounter();
    if (!enc || !this.newEnemyName.trim()) return;

    const newEnemy: Combatant = {
      id: 'enemy_' + Date.now(),
      name: this.newEnemyName.trim(),
      type: 'enemy',
      initiative: Number(this.newEnemyInit) || 0,
      damageTaken: 0,
      status: 'Illeso',
      conditions: []
    };

    enc.combatants.push(newEnemy);
    this.newEnemyName = '';
    this.newEnemyInit = 10;
    this.sortCombatants();
  }

  removeCombatant(id: string): void {
    const enc = this.encounter();
    if (!enc) return;
    enc.combatants = enc.combatants.filter(c => c.id !== id);
    if (enc.active_turn_index >= enc.combatants.length) {
      enc.active_turn_index = Math.max(0, enc.combatants.length - 1);
    }
    this.persist();
  }

  // Gestione Danni Anti-Metagame (Solo accumulo danni subiti)
  applyDamage(c: Combatant, amount: number): void {
    if (!c.damageTaken) c.damageTaken = 0;
    c.damageTaken = Math.max(0, c.damageTaken + amount);
    this.updateStatus(c);
    this.persist();
  }

  applyCustomDamage(c: Combatant): void {
    const val = Number(this.damageInputs[c.id]);
    if (!isNaN(val) && val > 0) {
      this.applyDamage(c, val);
      this.damageInputs[c.id] = 0;
    }
  }

  private updateStatus(c: Combatant): void {
    if ((c.damageTaken || 0) === 0) {
      c.status = 'Illeso';
    } else if ((c.damageTaken || 0) > 0 && c.status === 'Illeso') {
      c.status = 'Ferito';
    }
  }

  toggleKo(c: Combatant): void {
    c.status = c.status === 'KO / A Terra' ? 'Ferito' : 'KO / A Terra';
    this.persist();
  }

  async resetCombat(): Promise<void> {
    if (!confirm('Vuoi azzerare lo scontro e ricaricare il party a inizio Round 1?')) return;
    const enc = this.encounter();
    if (!enc) return;
    this.loading.set(true);
    try {
      const reset = await this.initService.resetCombat(enc.id);
      this.encounter.set(reset);
    } finally {
      this.loading.set(false);
    }
  }

  async persist(): Promise<void> {
    const enc = this.encounter();
    if (!enc) return;
    this.isSaving.set(true);
    try {
      await this.initService.saveCombat(enc);
    } finally {
      this.isSaving.set(false);
    }
  }
}