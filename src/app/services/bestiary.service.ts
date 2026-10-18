import { Injectable } from '@angular/core';
import { EnemyStatblock } from '../models/enemy-statblock.model';

const STORAGE_KEY = 'jade_regent_bestiary_enemies';

const SAMPLE_CARMEN: EnemyStatblock = {
  id: 'carmen_coccolatrice',
  name: 'CARMEN',
  title_line: 'Coccolatrice Suprema',
  cr: '20',
  xp: '160,000',
  gender_race_class: 'Female Labrador Retriever divine beast',
  alignment_size_type: 'LG Medium magical beast (canine, good)',
  init: '+10',
  senses: 'darkvision 60 ft., scent 60 ft.; Perception +25',
  ac: '40, touch 20, flat-footed 30 (+10 Dex, +10 natural, +10 deviazione)',
  hp: '550000 (PF infiniti da coccole)',
  fort: '+30',
  ref: '+30',
  will: '+30',
  speed: '50 ft. (15 m)',
  melee: 'coccole +80 (1d8+4/19-20 plus amore incondizionato)',
  space_reach: '5 ft.; Reach 5 ft.',
  abilities: { str: '20', dex: '30', con: '30', int: '18', wis: '24', cha: '30' },
  bab: '+20',
  cmb: '+25',
  cmd: '45',
  feats: 'Tutti i talenti di coccole',
  skills: 'Perception +25, Stealth +30, Amore +50',
  languages: 'Comprende tutto',
  special_abilities: [
    {
      name: 'Coccole Irresistibili',
      type: 'Su',
      description: 'Chiunque guardi Carmen deve superare un TS su Volontà con CD 40 o passare il round ad accarezzarla.'
    }
  ],
  created_at: new Date().toISOString(),
  updated_at: new Date().toISOString()
};

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
  abilities: { str: '18', dex: '19', con: '17', int: '12', wis: '14', cha: '15' },
  bab: '+3',
  cmb: '+7',
  cmd: '21 (10+3 bab +4 dex +4 str)',
  feats: 'Improved Init, Iron Will, Skill Focus (Bluff), Track, Weapon Focus (Bite)',
  skills: 'Acrobatics +10, Bluff +12, Diplomacy +8, Stealth +11, Intimidate +8, Perception +9, Disable Device +8, Survival +6',
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
        const defaults = [SAMPLE_CARMEN, SAMPLE_JEVA];
        this.saveAll(defaults);
        return defaults;
      }
      const list: EnemyStatblock[] = JSON.parse(raw);
      // Se era rimasta vuota o mancavano Carmen e Jeva, le reintegra
      if (list.length === 0) {
        const defaults = [SAMPLE_CARMEN, SAMPLE_JEVA];
        this.saveAll(defaults);
        return defaults;
      }
      return list;
    } catch {
      return [SAMPLE_CARMEN, SAMPLE_JEVA];
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

  // --- IMPORTAZIONE CON MERGE (NON CANCELLA PIÙ I MOSTRI ESISTENTI) ---
  importBackupJson(file: File, callback: (count: number) => void): void {
    const reader = new FileReader();
    reader.onload = (e) => {
      try {
        const parsed = JSON.parse(e.target?.result as string);
        const incoming: EnemyStatblock[] = Array.isArray(parsed) ? parsed : [parsed];
        const currentList = this.getAll();
        let affected = 0;

        for (const item of incoming) {
          if (!item || !item.name) continue;
          
          // Cerca se esiste già per ID o per Nome
          const idx = currentList.findIndex(
            (m) => m.id === item.id || (m.name.trim().toLowerCase() === item.name.trim().toLowerCase() && m.cr === item.cr)
          );

          if (idx >= 0) {
            currentList[idx] = { ...currentList[idx], ...item, updated_at: new Date().toISOString() };
          } else {
            const newId = item.id || 'enemy_' + Date.now() + '_' + Math.random().toString(36).substring(2, 6);
            currentList.push({ ...item, id: newId });
          }
          affected++;
        }

        this.saveAll(currentList);
        callback(affected);
      } catch (err) {
        console.error('File backup non valido:', err);
      }
    };
    reader.readAsText(file);
  }
}