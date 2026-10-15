import { Component, OnInit, inject, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Router, RouterLink } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { CharacterService, CharacterSummary, CharacterSheetData } from '../../services/character.service';

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
    subtitle: 'Magia divina, compagno e forme selvatiche'
  },
  {
    slug: 'azoi',
    name: 'Azoi',
    className: 'Magus',
    race: 'Tengu',
    level: 7,
    icon: '⚡',
    theme: 'blue',
    subtitle: 'Spellstrike e combattimento con incantesimi'
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
  private router = inject(Router);

  characters = signal<CharacterEntry[]>([...DEFAULT_HEROES]);
  loading = signal<boolean>(false);

  showCreateModal = signal<boolean>(false);
  newName = '';
  newClass = 'Guerriero';
  newRace = 'Umano';
  newLevel = 7;
  isCreating = signal<boolean>(false);

  ngOnInit(): void {
    this.syncCharactersWithDatabase();
  }

  syncCharactersWithDatabase(): void {
    this.loading.set(true);
    this.charService.getAllCharacters().subscribe({
      next: (dbCharacters: CharacterSummary[]) => {
        const list = [...DEFAULT_HEROES];

        for (const dbChar of dbCharacters) {
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
        this.loading.set(false);
      },
      error: () => this.loading.set(false)
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
        quote: '«In cammino attraverso la via della Giada.»',
        hp_max: 50,
        hp_current: 50,
        ac_total: 18,
        ac_touch: 12,
        ac_flat_footed: 16,
        initiative: 2,
        speed_meters: 9,
        speed_squares: 6,
        bab: 5,
        fortitude: 6,
        reflex: 6,
        will: 6,
        str: 14,
        dex: 14,
        con: 14,
        int: 12,
        wis: 12,
        cha: 12,
        resolve_max: 0,
        resolve_current: 0,
        challenge_max: 0,
        challenge_current: 0,
        weapons: [
          { name: 'Spada Lunga', attack_bonus: '+8', damage: '1d8+2', crit: '19-20/x2', special: 'Versatile' }
        ],
        feats: [],
        special_resources: [],
        skills: [
          { name: 'Percezione', stat: 'SAG', bonus: 8 },
          { name: 'Furtività', stat: 'DES', bonus: 6 }
        ]
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
      error: (err) => {
        console.error('Errore creazione scheda:', err);
        this.isCreating.set(false);
        this.router.navigate(['/characters', slug]);
      }
    });
  }
}