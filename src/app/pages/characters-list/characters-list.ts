import { Component, OnInit, inject, signal, computed } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Router, RouterLink } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { CharacterService, CharacterSummary, CharacterSheetData } from '../../services/character.service';
import { NpcService } from '../../services/npc.service';
import { NpcRecord } from '../../models/npc.model';
import { BestiaryService } from '../../services/bestiary.service';
import { PdfExportService } from '../../services/pdf-export.service';
import { EnemyStatblock } from '../../models/enemy-statblock.model';

export interface CharacterEntry {
  slug: string;
  name: string;
  kanji?: string;
  className: string;
  race: string;
  level: number;
  icon: string;
  theme: 'crimson' | 'emerald' | 'blue' | 'amber' | 'violet';
  subtitle: string;
}

const DEFAULT_HEROES: CharacterEntry[] = [
  {
    slug: 'ryoujin',
    name: 'Ryoujin',
    kanji: '竜刃',
    className: 'Samurai (Ordine del Ronin)',
    race: 'Tiefling (Oni-Spawn)',
    level: 7,
    icon: '⚔️',
    theme: 'crimson',
    subtitle: 'Spadaccino in prima linea • Lupo Hisui'
  },
  {
    slug: 'airyn',
    name: 'Airyn',
    className: 'Druido',
    race: 'Silfide',
    level: 7,
    icon: '🌿',
    theme: 'emerald',
    subtitle: 'Magia divina e forme selvatiche'
  },
  {
    slug: 'azoi',
    name: 'Azoi',
    className: 'Magus',
    race: 'Tengu',
    level: 7,
    icon: '⚡',
    theme: 'blue',
    subtitle: 'Spellstrike e combattimento arcano'
  },
  {
    slug: 'kaede',
    name: 'Kaede',
    className: 'Ninja',
    race: 'Kitsune',
    level: 7,
    icon: '🦊',
    theme: 'amber',
    subtitle: 'Arti ninja, furtività e colpi letali'
  },
  {
    slug: 'nijena',
    name: 'Nijena',
    className: 'Barda',
    race: 'Aasimar',
    level: 7,
    icon: '🪕',
    theme: 'violet',
    subtitle: 'Canti, ispirazione coraggio e supporto'
  }
];

@Component({
  selector: 'app-characters-list',
  standalone: true,
  imports: [CommonModule, RouterLink, FormsModule],
  templateUrl: './characters-list.html',
  styleUrl: './characters-list.scss'
})
export class CharactersListComponent implements OnInit {
  private charService = inject(CharacterService);
  private npcService = inject(NpcService);
  private bestiaryService = inject(BestiaryService);
  private pdfExportService = inject(PdfExportService);
  private router = inject(Router);

  // SWITCHER A 3 SCHEDE
  activeMainTab = signal<'party' | 'npcs' | 'bestiary'>('party');

  // 1. EROI PARTY
  characters = signal<CharacterEntry[]>([...DEFAULT_HEROES]);
  loadingHeroes = signal<boolean>(false);

  // 2. PNG & CAROVANA (NEON SERVER)
  npcs = signal<NpcRecord[]>([]);
  loadingNpcs = signal<boolean>(false);
  npcSearch = signal<string>('');
  selectedLocation = signal<string>('Tutti');
  selectedStatus = signal<string>('Tutti');
  selectedNpc = signal<NpcRecord | null>(null);
  isSavingNpc = signal<boolean>(false);

  // 3. BESTIARIO DEL MASTER (LOCALE)
  enemies = signal<EnemyStatblock[]>([]);
  enemySearch = signal<string>('');
  selectedEnemy = signal<EnemyStatblock | null>(null);
  editorTab = signal<'general' | 'defense' | 'offense' | 'tactics' | 'stats' | 'abilities' | 'preview'>('general');

  newAbilityName = '';
  newAbilityType: 'Ex' | 'Sp' | 'Su' | '' = 'Ex';
  newAbilityDesc = '';

  // MODALE CREA EROE
  showCreateModal = signal<boolean>(false);
  newName = '';
  newClass = 'Guerriero';
  newRace = 'Umano';
  newLevel = 7;
  isCreating = signal<boolean>(false);

  // FILTRI REATTIVI
  filteredNpcs = computed(() => {
    const q = this.npcSearch().toLowerCase().trim();
    const loc = this.selectedLocation();
    const st = this.selectedStatus();

    return this.npcs().filter((n) => {
      if (q) {
        const full = `${n.first_name} ${n.last_name || ''} ${n.alter_ego || ''} ${n.description || ''} ${n.notes || ''}`.toLowerCase();
        if (!full.includes(q)) return false;
      }
      if (loc !== 'Tutti' && n.location !== loc) return false;
      if (st !== 'Tutti') {
        if (st === 'lore') {
          if (n.category === 'NPC') return false;
        } else if (n.status !== st) {
          return false;
        }
      }
      return true;
    });
  });

  filteredEnemies = computed(() => {
    const q = this.enemySearch().toLowerCase().trim();
    return this.enemies().filter((e) => {
      if (!q) return true;
      const full = `${e.name} ${e.title_line || ''} ${e.cr || ''} ${e.gender_race_class || ''} ${e.special_attacks || ''}`.toLowerCase();
      return full.includes(q);
    });
  });

  ngOnInit(): void {
    this.syncCharactersWithDatabase();
    this.loadNpcsFromServer();
    this.loadBestiary();
  }

  // ETICHETTE PULITE PER LO STATO DEI PNG
  getStatusLabel(status: string | null | undefined): string {
    switch (status) {
      case 'ally': return '🟢 Alleato';
      case 'enemy': return '🔴 Nemico';
      case 'dead': return '💀 Deceduto';
      case 'prisoner': return '🔒 Prigioniero';
      case 'cultist': return '🟣 Cultista';
      case 'alive': return '⚪ Attivo';
      default: return status || 'Attivo';
    }
  }

  // ==================== SEZIONE BESTIARIO ====================
  loadBestiary(): void {
    this.enemies.set(this.bestiaryService.getAll());
  }

  openNewEnemyModal(): void {
    const newEnemy: EnemyStatblock = {
      id: 'enemy_' + Date.now(),
      name: 'Nuovo Mostro / Boss',
      title_line: 'Guerriero 5',
      cr: '5',
      xp: '1600',
      gender_race_class: 'Medium humanoid',
      alignment_size_type: 'NE Medium humanoid',
      init: '+2',
      senses: 'darkvision 60 ft.',
      perception: '+10',
      ac: '18, touch 12, flat-footed 16 (+6 armor, +2 Dex)',
      hp: '55 (5d10+15)',
      fort: '+7',
      ref: '+3',
      will: '+2',
      speed: '30 ft. (9 m)',
      melee: 'Spada lunga +8 (1d8+4/19-20)',
      space_reach: '5 ft.; Reach 5 ft.',
      abilities: { str: '16', dex: '14', con: '16', int: '10', wis: '12', cha: '10' },
      bab: '+5',
      cmb: '+8',
      cmd: '20',
      feats: 'Power Attack, Weapon Focus (Longsword)',
      skills: 'Intimidate +8, Perception +10',
      languages: 'Common',
      special_abilities: [],
      created_at: new Date().toISOString(),
      updated_at: new Date().toISOString()
    };
    this.selectedEnemy.set(newEnemy);
    this.editorTab.set('general');
  }

  editEnemy(enemy: EnemyStatblock, event?: Event): void {
    if (event) {
      event.preventDefault();
      event.stopPropagation();
    }
    const clone = JSON.parse(JSON.stringify(enemy));
    if (!clone.abilities) {
      clone.abilities = { str: '10', dex: '10', con: '10', int: '10', wis: '10', cha: '10' };
    }
    if (!clone.special_abilities) {
      clone.special_abilities = [];
    }
    this.selectedEnemy.set(clone);
    this.editorTab.set('general');
  }

  saveEnemyFromEditor(): void {
    const current = this.selectedEnemy();
    if (!current) return;
    this.bestiaryService.save(current);
    this.loadBestiary();
    this.selectedEnemy.set(null);
  }

  deleteEnemy(id: string, name: string, event: Event): void {
    event.preventDefault();
    event.stopPropagation();
    if (!confirm(`Vuoi eliminare definitivamente lo statblock di "${name}" dal tuo Bestiario locale?`)) return;
    this.bestiaryService.delete(id);
    this.loadBestiary();
  }

  async downloadPdf(enemy: EnemyStatblock, event?: Event): Promise<void> {
    if (event) {
      event.preventDefault();
      event.stopPropagation();
    }
    await this.pdfExportService.downloadStatblockPdf(enemy);
  }

  printPdf(enemy: EnemyStatblock, event?: Event): void {
    if (event) {
      event.preventDefault();
      event.stopPropagation();
    }
    this.pdfExportService.printStatblockNative(enemy);
  }

  addSpecialAbility(): void {
    const cur = this.selectedEnemy();
    if (!cur || !this.newAbilityName.trim()) return;

    if (!cur.special_abilities) cur.special_abilities = [];
    cur.special_abilities.push({
      name: this.newAbilityName.trim(),
      type: this.newAbilityType,
      description: this.newAbilityDesc.trim()
    });

    this.newAbilityName = '';
    this.newAbilityDesc = '';
  }

  removeSpecialAbility(index: number): void {
    this.selectedEnemy()?.special_abilities.splice(index, 1);
  }

  exportBackupBestiary(): void {
    this.bestiaryService.exportBackupJson();
  }

  onImportBestiaryFile(event: Event): void {
    const input = event.target as HTMLInputElement;
    if (!input.files || input.files.length === 0) return;
    this.bestiaryService.importBackupJson(input.files[0], (count) => {
      alert(`Importati/Aggiornati con successo ${count} mostri nel Bestiario locale!`);
      this.loadBestiary();
      input.value = '';
    });
  }

  // ==================== SEZIONE PNG & CAROVANA ====================
  formatImageUrl(url: string | null | undefined): string {
    if (!url) return '';
    if (url.startsWith('data:image/')) return url;
    const driveMatch = url.match(/\/d\/([a-zA-Z0-9_-]+)/) || url.match(/[?&]id=([a-zA-Z0-9_-]+)/);
    if (driveMatch && driveMatch[1]) {
      return `https://lh3.googleusercontent.com/d/${driveMatch[1]}`;
    }
    return url;
  }

  onImageFileSelected(event: Event): void {
    const input = event.target as HTMLInputElement;
    if (!input.files || input.files.length === 0) return;
    const file = input.files[0];
    const reader = new FileReader();
    reader.onload = (e) => {
      const img = new Image();
      img.onload = () => {
        const maxDim = 800;
        let width = img.width;
        let height = img.height;
        if (width > height && width > maxDim) {
          height = Math.round((height * maxDim) / width);
          width = maxDim;
        } else if (height > maxDim) {
          width = Math.round((width * maxDim) / height);
          height = maxDim;
        }
        const canvas = document.createElement('canvas');
        canvas.width = width;
        canvas.height = height;
        const ctx = canvas.getContext('2d');
        ctx?.drawImage(img, 0, 0, width, height);
        const compressedBase64 = canvas.toDataURL('image/jpeg', 0.85);

        const current = this.selectedNpc();
        if (current) {
          current.image_url = compressedBase64;
          this.selectedNpc.set({ ...current });
        }
      };
      img.src = e.target?.result as string;
    };
    reader.readAsDataURL(file);
  }

  removeNpcImage(): void {
    const current = this.selectedNpc();
    if (current) {
      current.image_url = null;
      this.selectedNpc.set({ ...current });
    }
  }

  loadNpcsFromServer(): void {
    this.loadingNpcs.set(true);
    this.npcService.getAllNpcs().subscribe({
      next: (data) => {
        this.npcs.set(data || []);
        this.loadingNpcs.set(false);
      },
      error: () => this.loadingNpcs.set(false)
    });
  }

  openNpcDetails(npc: NpcRecord): void {
    this.selectedNpc.set(JSON.parse(JSON.stringify(npc)));
  }

  saveNpcChanges(): void {
    const current = this.selectedNpc();
    if (!current) return;
    this.isSavingNpc.set(true);
    this.npcService.saveNpc(current).subscribe({
      next: (res) => {
        this.npcs.update((list) => list.map((item) => (item.slug === res.npc.slug ? res.npc : item)));
        this.isSavingNpc.set(false);
        this.selectedNpc.set(null);
      },
      error: () => this.isSavingNpc.set(false)
    });
  }

  // ==================== SEZIONE EROI DEL PARTY ====================
  private getDeletedSlugs(): Set<string> {
    try {
      const raw = localStorage.getItem('jade_regent_deleted_slugs');
      return raw ? new Set(JSON.parse(raw)) : new Set();
    } catch {
      return new Set();
    }
  }

  private markSlugAsDeleted(slug: string): void {
    const set = this.getDeletedSlugs();
    set.add(slug);
    try {
      localStorage.setItem('jade_regent_deleted_slugs', JSON.stringify(Array.from(set)));
    } catch {}
  }

  syncCharactersWithDatabase(): void {
    this.loadingHeroes.set(true);
    const deletedSlugs = this.getDeletedSlugs();

    this.charService.getAllCharacters().subscribe({
      next: (dbCharacters: CharacterSummary[]) => {
        const list = DEFAULT_HEROES.filter((h) => !deletedSlugs.has(h.slug));

        for (const dbChar of dbCharacters) {
          if (deletedSlugs.has(dbChar.slug)) continue;

          const match = list.find((c) => c.slug === dbChar.slug);
          if (match) {
            match.level = dbChar.level || match.level;
            if (dbChar.class_name) match.className = dbChar.class_name;
            if (dbChar.race) match.race = dbChar.race;
          } else {
            list.push({
              slug: dbChar.slug,
              name: dbChar.name,
              className: dbChar.class_name || 'Avventuriero',
              race: dbChar.race || 'Umano',
              level: dbChar.level || 7,
              icon: '🛡️',
              theme: 'blue',
              subtitle: 'Eroe della carovana'
            });
          }
        }
        this.characters.set(list);
        this.loadingHeroes.set(false);
      },
      error: () => this.loadingHeroes.set(false)
    });
  }

  deleteCharacter(slug: string, name: string, event: Event): void {
    event.preventDefault();
    event.stopPropagation();

    const msg = `Vuoi davvero eliminare definitivamente la scheda di "${name}"? I dati sul database verranno cancellati.`;
    if (!confirm(msg)) return;

    this.charService.deleteCharacter(slug).subscribe({
      next: () => {
        this.markSlugAsDeleted(slug);
        this.characters.update((list) => list.filter((c) => c.slug !== slug));
      },
      error: () => {
        this.markSlugAsDeleted(slug);
        this.characters.update((list) => list.filter((c) => c.slug !== slug));
      }
    });
  }

  openCreateModal(): void {
    this.newName = '';
    this.newClass = 'Guerriero';
    this.newRace = 'Umano';
    this.newLevel = 7;
    this.showCreateModal.set(true);
  }

  createNewCharacter(): void {
    const name = this.newName.trim();
    if (!name) return;

    const slug = name.toLowerCase().replace(/[^a-z0-9]/g, '_');
    this.isCreating.set(true);

    const initialData: CharacterSheetData = {
      character: {
        race: this.newRace.trim() || 'Umano',
        alignment: 'Neutrale',
        quote: '',
        hp_max: 0,
        hp_current: 0,
        ac_total: 10,
        ac_touch: 10,
        ac_flat_footed: 10,
        initiative: 0,
        speed_meters: 9,
        speed_squares: 6,
        bab: 0,
        fortitude: 0,
        reflex: 0,
        will: 0,
        str: 10,
        dex: 10,
        con: 10,
        int: 10,
        wis: 10,
        cha: 10,
        resolve_max: 0,
        resolve_current: 0,
        challenge_max: 0,
        challenge_current: 0,
        weapons: [],
        feats: [],
        skills: []
      }
    };

    this.charService.createCharacter({
      slug,
      name,
      class_name: this.newClass.trim() || 'Avventuriero',
      level: this.newLevel || 7,
      data: initialData
    }).subscribe({
      next: () => {
        this.isCreating.set(false);
        this.showCreateModal.set(false);
        this.router.navigate(['/characters', slug]);
      },
      error: () => {
        this.isCreating.set(false);
        this.router.navigate(['/characters', slug]);
      }
    });
  }
}