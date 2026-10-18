import { Injectable } from '@angular/core';
import { EnemyStatblock } from '../models/enemy-statblock.model';

const STORAGE_KEY = 'jade_regent_bestiary_enemies';

// Modello di prova basato sul tuo PDF di esempio per testare subito
const SAMPLE_JEVA: EnemyStatblock = {
  id: 'jeva_werewolf',
  name: 'Jeva',
  title_line: 'human werewolf Rogue 3 (hybrid form)',
  cr: '4',
  xp: '1200',
  gender_race_class: 'Female human werewolf rogue 3',
  alignment_size_type: 'CE Medium humanoid (human, shapechanger)',
  init: '+8',
  senses: 'low-light vision, scent',
  perception: '+9',
  ac: '19, touch 14, flat-footed 15 (+4 Dex, +5 natural)',
  hp: '43 (4d8+15 and 2d6+6) (RUN AT < 10 hp)',
  fort: '+7',
  ref: '+10',
  will: '+4',
  defensive_abilities: 'evasion',
  dr: '5/argento',
  speed: '30 ft. (9 m)',
  melee: '2 claws +7 (1d6+4) and bite +9 (1d8+4) (Curse of Lycanthropy)',
  space_reach: '5 ft.; Reach 5 ft.',
  special_attacks: 'sneak attack +2d6',
  before_combat: "Wait until they're either engaged with another foe or significantly weakened. May also go for the kids and the bard.",
  during_combat: 'Flank if possible. Otherwise take the weakest foe.',
  morale: 'Run if <10 hp',
  base_statistics: 'Str 16, Dex 17, Con 15, Int 12, Wis 14, Cha 15 | AC 16, touch 14, flat-footed 12',
  abilities: {
    str: '18',
    dex: '19',
    con: '17',
    int: '12',
    wis: '14',
    cha: '15'
  },
  bab: '+3',
  cmb: '+7',
  cmd: '21 (10+3 bab +4 dex +4 str)',
  feats: 'Improved Init, Iron Will, Skill Focus (Bluff), Track, Weapon Focus (Bite)',
  skills: 'Acrobatics +10, Bluff +12, Diplomacy +8, Stealth +11, Intimidate +8, Perception +9, Disable Device +8, Survival +6 (+10 using Scent)',
  languages: 'Common, Elven',
  sq: 'alternate form, wolf empathy, trapfinding',
  gear: 'dagger, garnet ring (10 gp), tattered clothes',
  special_abilities: [
    {
      name: 'Change Shape',
      type: 'Su',
      description: 'An afflicted lycanthrope can assume animal or hybrid form as a full-round action by making a DC 15 Constitution check.'
    },
    {
      name: 'Curse of Lycanthropy',
      type: 'Su',
      description: "A natural lycanthrope's bite attack in animal or hybrid form infects a humanoid target with lycanthropy (Fortitude DC 15 negates)."
    },
    {
      name: 'Lycanthropic Empathy (Wolf)',
      type: 'Ex',
      description: 'In any form, can communicate and empathize with wolves (+4 racial bonus to Diplomacy checks).'
    }
  ],
  created_at: new Date().toISOString(),
  updated_at: new Date().toISOString()
};

@Injectable({
  providedIn: 'root'
})
export class BestiaryService {
  getAll(): EnemyStatblock[] {
    try {
      const raw = localStorage.getItem(STORAGE_KEY);
      if (!raw) {
        // Inizializza con il mostro campione dal tuo PDF
        this.saveAll([SAMPLE_JEVA]);
        return [SAMPLE_JEVA];
      }
      return JSON.parse(raw);
    } catch {
      return [SAMPLE_JEVA];
    }
  }

  getById(id: string): EnemyStatblock | undefined {
    return this.getAll().find((m) => m.id === id);
  }

  save(enemy: EnemyStatblock): void {
    const list = this.getAll();
    const index = list.findIndex((m) => m.id === enemy.id);
    enemy.updated_at = new Date().toISOString();

    if (index >= 0) {
      list[index] = enemy;
    } else {
      enemy.created_at = new Date().toISOString();
      list.unshift(enemy);
    }
    this.saveAll(list);
  }

  delete(id: string): void {
    const filtered = this.getAll().filter((m) => m.id !== id);
    this.saveAll(filtered);
  }

  private saveAll(list: EnemyStatblock[]): void {
    try {
      localStorage.setItem(STORAGE_KEY, JSON.stringify(list));
    } catch (e) {
      console.warn('Errore salvataggio bestiario in localStorage:', e);
    }
  }

  exportBackupJson(): void {
    const data = JSON.stringify(this.getAll(), null, 2);
    const blob = new Blob([data], { type: 'application/json' });
    const url = URL.createObjectURL(blob);
    const a = document.createElement('a');
    a.href = url;
    a.download = `bestiario_jade_regent_${new Date().toISOString().slice(0, 10)}.json`;
    a.click();
    URL.revokeObjectURL(url);
  }

  importBackupJson(file: File, callback: (count: number) => void): void {
    const reader = new FileReader();
    reader.onload = (e) => {
      try {
        const parsed = JSON.parse(e.target?.result as string);
        if (Array.isArray(parsed)) {
          this.saveAll(parsed);
          callback(parsed.length);
        }
      } catch (err) {
        console.error('File backup non valido:', err);
      }
    };
    reader.readAsText(file);
  }
}