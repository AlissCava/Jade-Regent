import { Component, OnInit, inject, signal, computed } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { WildShapeService } from './services/wild-shape.service';
import { SpellService } from './services/spell.service';
import { WildShape } from './models/wild-shape.model';
import { Spell } from './models/spell.model';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './app.html',
  styleUrl: './app.scss'
})
export class App implements OnInit {
  private shapeService = inject(WildShapeService);
  private spellService = inject(SpellService);

  // Switcher moduli
  activeTab = signal<'shapes' | 'spells'>('shapes');

  // --- STATO FORME SELVATICHE ---
  shapes = signal<WildShape[]>([]);
  loadingShapes = signal<boolean>(true);
  searchTerm = signal<string>('');
  selectedSize = signal<string>('Tutte');
  selectedBsLevel = signal<string>('Tutti');
  onlyPounce = signal<boolean>(false);
  onlyFly = signal<boolean>(false);
  onlySwim = signal<boolean>(false);
  onlyClimb = signal<boolean>(false);
  onlyTrip = signal<boolean>(false);
  onlyGrab = signal<boolean>(false);

  hasActiveShapeFilters = computed(() => {
    return (
      this.searchTerm().trim().length > 0 ||
      this.selectedSize() !== 'Tutte' ||
      this.selectedBsLevel() !== 'Tutti' ||
      this.onlyPounce() ||
      this.onlyFly() ||
      this.onlySwim() ||
      this.onlyClimb() ||
      this.onlyTrip() ||
      this.onlyGrab()
    );
  });

  filteredShapes = computed(() => {
    const term = this.searchTerm().toLowerCase().trim();
    return this.shapes().filter((s) => {
      const matchName = term === '' || s.name.toLowerCase().includes(term);
      const matchSize = this.selectedSize() === 'Tutte' || s.size === this.selectedSize();
      const matchLevel = this.selectedBsLevel() === 'Tutti' || s.bs_level === Number(this.selectedBsLevel());
      const matchPounce = !this.onlyPounce() || s.has_pounce;
      const matchTrip = !this.onlyTrip() || s.has_trip;
      const matchGrab = !this.onlyGrab() || s.has_grab;
      const matchFly = !this.onlyFly() || (s.fly_speed !== null && s.fly_speed !== 'No');
      const matchSwim = !this.onlySwim() || (s.swim_speed !== null && s.swim_speed !== 'No');
      const matchClimb = !this.onlyClimb() || (s.climb_speed !== null && s.climb_speed !== 'No');
      return matchName && matchSize && matchLevel && matchPounce && matchTrip && matchGrab && matchFly && matchSwim && matchClimb;
    });
  });

  // --- STATO INCANTESIMI ---
  spells = signal<Spell[]>([]);
  loadingSpells = signal<boolean>(true);
  spellSearch = signal<string>('');
  selectedClass = signal<'druid' | 'magus' | 'all'>('druid');
  selectedSpellLevel = signal<string>('all');
  onlyTouch = signal<boolean>(false);

  selectedSpell = signal<Spell | null>(null);

  hasActiveSpellFilters = computed(() => {
    return (
      this.spellSearch().trim().length > 0 ||
      this.selectedSpellLevel() !== 'all' ||
      this.onlyTouch()
    );
  });

  filteredSpells = computed(() => {
    const term = this.spellSearch().toLowerCase().trim();
    const cls = this.selectedClass();
    const lvl = this.selectedSpellLevel();
    const touch = this.onlyTouch();

    return this.spells().filter((s) => {
      let matchClass = false;
      if (cls === 'druid') matchClass = s.druid_level !== null;
      else if (cls === 'magus') matchClass = s.magus_level !== null;
      else matchClass = s.druid_level !== null || s.magus_level !== null;

      if (!matchClass) return false;

      if (lvl !== 'all') {
        const targetLvl = Number(lvl);
        if (cls === 'druid' && s.druid_level !== targetLvl) return false;
        if (cls === 'magus' && s.magus_level !== targetLvl) return false;
        if (cls === 'all' && s.druid_level !== targetLvl && s.magus_level !== targetLvl) return false;
      }

      if (touch) {
        const isTouch = (s.range && s.range.toLowerCase().includes('contatto')) ||
                        (s.casting_time && s.casting_time.toLowerCase().includes('contatto'));
        if (!isTouch) return false;
      }

      if (term !== '') {
        const inName = s.name.toLowerCase().includes(term);
        const inEnName = s.english_name ? s.english_name.toLowerCase().includes(term) : false;
        const inShort = s.short_description ? s.short_description.toLowerCase().includes(term) : false;
        const inSchool = s.school ? s.school.toLowerCase().includes(term) : false;
        if (!inName && !inEnName && !inShort && !inSchool) return false;
      }

      return true;
    });
  });

  ngOnInit(): void {
    this.shapeService.getAllShapes().subscribe({
      next: (data) => {
        this.shapes.set(data);
        this.loadingShapes.set(false);
      },
      error: () => this.loadingShapes.set(false)
    });

    this.spellService.getSpells().subscribe({
      next: (data) => {
        this.spells.set(data);
        this.loadingSpells.set(false);
      },
      error: () => this.loadingSpells.set(false)
    });
  }

  resetShapeFilters(): void {
    this.searchTerm.set('');
    this.selectedSize.set('Tutte');
    this.selectedBsLevel.set('Tutti');
    this.onlyPounce.set(false);
    this.onlyFly.set(false);
    this.onlySwim.set(false);
    this.onlyClimb.set(false);
    this.onlyTrip.set(false);
    this.onlyGrab.set(false);
  }

  resetSpellFilters(): void {
    this.spellSearch.set('');
    this.selectedSpellLevel.set('all');
    this.onlyTouch.set(false);
  }
}