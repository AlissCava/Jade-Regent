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

  private unmarkSlugAsDeleted(slug: string): void {
    const set = this.getDeletedSlugs();
    set.delete(slug);
    try {
      localStorage.setItem('jade_regent_deleted_slugs', JSON.stringify(Array.from(set)));
    } catch {}
  }

  syncCharactersWithDatabase(): void {
    this.loading.set(true);
    const deletedSlugs = this.getDeletedSlugs();

    this.charService.getAllCharacters().subscribe({
      next: (dbCharacters: CharacterSummary[]) => {
        // Filtra via i personaggi eliminati
        const list = DEFAULT_HEROES.filter(h => !deletedSlugs.has(h.slug));

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
        this.loading.set(false);
      },
      error: () => this.loading.set(false)
    });
  }

  deleteCharacter(slug: string, name: string, event: Event): void {
    event.preventDefault();
    event.stopPropagation(); // Evita l'apertura accidentale del link della scheda

    const msg = `Vuoi davvero eliminare definitivamente la scheda di "${name}"? I dati sul database verranno cancellati.`;
    if (!confirm(msg)) return;

    this.charService.deleteCharacter(slug).subscribe({
      next: () => {
        this.markSlugAsDeleted(slug);
        this.characters.update(list => list.filter(c => c.slug !== slug));
      },
      error: () => {
        this.markSlugAsDeleted(slug);
        this.characters.update(list => list.filter(c => c.slug !== slug));
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
    this.unmarkSlugAsDeleted(slug);

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
        special_resources: [],
        skills: [],
        notes: ''
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