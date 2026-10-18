import { Component, OnInit, inject, signal, computed } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Router, RouterLink } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { CharacterService, CharacterSummary, CharacterSheetData } from '../../services/character.service';
import { NpcService } from '../../services/npc.service';
import { NpcRecord } from '../../models/npc.model';

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
  private router = inject(Router);

  activeMainTab = signal<'party' | 'npcs'>('party');

  characters = signal<CharacterEntry[]>([...DEFAULT_HEROES]);
  loadingHeroes = signal<boolean>(false);

  npcs = signal<NpcRecord[]>([]);
  loadingNpcs = signal<boolean>(false);
  npcSearch = signal<string>('');
  selectedLocation = signal<string>('Tutti');
  selectedStatus = signal<string>('Tutti');

  selectedNpc = signal<NpcRecord | null>(null);
  isSavingNpc = signal<boolean>(false);

  showCreateModal = signal<boolean>(false);
  newName = '';
  newClass = 'Guerriero';
  newRace = 'Umano';
  newLevel = 7;
  isCreating = signal<boolean>(false);

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

  ngOnInit(): void {
    this.syncCharactersWithDatabase();
    this.loadNpcsFromServer();
  }

  // --- TRASFORMA LINK DRIVE O NORMALI IN URL DIRETTO IMMAGINE ---
  formatImageUrl(url: string | null | undefined): string {
    if (!url) return '';
    if (url.startsWith('data:image/')) return url; // È già un file caricato in Base64

    // Riconosce e trasforma i link di Google Drive (es. /file/d/ID/view o id=ID)
    const driveMatch = url.match(/\/d\/([a-zA-Z0-9_-]+)/) || url.match(/[?&]id=([a-zA-Z0-9_-]+)/);
    if (driveMatch && driveMatch[1]) {
      return `https://lh3.googleusercontent.com/d/${driveMatch[1]}`;
    }
    return url;
  }

  // --- CARICAMENTO FILE DAL PC CON RIDIMENSIONAMENTO AUTOMATICO ---
  onImageFileSelected(event: Event): void {
    const input = event.target as HTMLInputElement;
    if (!input.files || input.files.length === 0) return;
    const file = input.files[0];

    const reader = new FileReader();
    reader.onload = (e) => {
      const img = new Image();
      img.onload = () => {
        // Ridimensionamento a max 800px per ottimizzare lo spazio su database
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

        // Converte in JPEG ottimizzato
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

  syncCharactersWithDatabase(): void {
    this.loadingHeroes.set(true);
    this.charService.getAllCharacters().subscribe({
      next: (dbCharacters: CharacterSummary[]) => {
        const list = [...DEFAULT_HEROES];
        for (const dbChar of dbCharacters) {
          const match = list.find((c) => c.slug === dbChar.slug);
          if (match) {
            match.level = dbChar.level || match.level;
            if (dbChar.class_name) match.className = dbChar.class_name;
            if (dbChar.race) match.race = dbChar.race;
          }
        }
        this.characters.set(list);
        this.loadingHeroes.set(false);
      },
      error: () => this.loadingHeroes.set(false)
    });
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
      error: (err) => {
        console.error('Errore salvataggio NPC:', err);
        this.isSavingNpc.set(false);
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