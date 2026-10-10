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
  activeTab = signal<'shapes' | 'spells'>('spells');

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

  // --- STATO INCANTESIMI & LIVELLO INCANTATORE ---
  spells = signal<Spell[]>([]);
  loadingSpells = signal<boolean>(true);
  spellSearch = signal<string>('');
  selectedClass = signal<'druid' | 'magus' | 'all'>('druid');
  selectedSpellLevel = signal<string>('all');
  
  // LIVELLO INCANTATORE (Default a 7 per Airyn e Magus)
  casterLevel = signal<number>(7);

  // Filtri Tattici Avanzati
  onlyTouch = signal<boolean>(false);
  onlyNoSave = signal<boolean>(false);
  onlyNoSpellRes = signal<boolean>(false);
  onlySwiftAction = signal<boolean>(false);
  selectedSchool = signal<string>('Tutte');
  selectedSavingThrow = signal<string>('Tutti');

  selectedSpell = signal<Spell | null>(null);

  hasActiveSpellFilters = computed(() => {
    return (
      this.spellSearch().trim().length > 0 ||
      this.selectedSpellLevel() !== 'all' ||
      this.onlyTouch() ||
      this.onlyNoSave() ||
      this.onlyNoSpellRes() ||
      this.onlySwiftAction() ||
      this.selectedSchool() !== 'Tutte' ||
      this.selectedSavingThrow() !== 'Tutti'
    );
  });

  filteredSpells = computed(() => {
    const term = this.spellSearch().toLowerCase().trim();
    const cls = this.selectedClass();
    const lvl = this.selectedSpellLevel();
    const touch = this.onlyTouch();
    const noSave = this.onlyNoSave();
    const noSr = this.onlyNoSpellRes();
    const swift = this.onlySwiftAction();
    const school = this.selectedSchool();
    const saveType = this.selectedSavingThrow();

    return this.spells().filter((s) => {
      // 1. Classe
      let matchClass = false;
      if (cls === 'druid') matchClass = s.druid_level !== null;
      else if (cls === 'magus') matchClass = s.magus_level !== null;
      else matchClass = s.druid_level !== null || s.magus_level !== null;

      if (!matchClass) return false;

      // 2. Livello Slot
      if (lvl !== 'all') {
        const targetLvl = Number(lvl);
        if (cls === 'druid' && s.druid_level !== targetLvl) return false;
        if (cls === 'magus' && s.magus_level !== targetLvl) return false;
        if (cls === 'all' && s.druid_level !== targetLvl && s.magus_level !== targetLvl) return false;
      }

      // 3. A Contatto (Spellstrike)
      if (touch) {
        const isTouch = (s.range && s.range.toLowerCase().includes('contatto')) ||
                        (s.casting_time && s.casting_time.toLowerCase().includes('contatto'));
        if (!isTouch) return false;
      }

      // 4. Nessun Tiro Salvezza
      if (noSave) {
        const hasNoSave = s.saving_throw && s.saving_throw.toLowerCase().includes('nessun');
        if (!hasNoSave) return false;
      }

      // 5. Ignora Resistenza agli Incantesimi (RI: No)
      if (noSr) {
        const ignoresSr = s.spell_res && s.spell_res.toLowerCase().trim() === 'no';
        if (!ignoresSr) return false;
      }

      // 6. Azione Veloce / Immediata
      if (swift) {
        const isSwift = s.casting_time && (
          s.casting_time.toLowerCase().includes('veloce') || 
          s.casting_time.toLowerCase().includes('immediat')
        );
        if (!isSwift) return false;
      }

      // 7. Scuola di Magia
      if (school !== 'Tutte') {
        if (!s.school || !s.school.toLowerCase().includes(school.toLowerCase())) return false;
      }

      // 8. Tipo di Tiro Salvezza specifico
      if (saveType !== 'Tutti') {
        if (!s.saving_throw || !s.saving_throw.toLowerCase().includes(saveType.toLowerCase())) return false;
      }

      // 9. Ricerca Testo (Italiano ed Inglese)
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

  // --- METODI SCALABILITÀ LIVELLO INCANTATORE ---
  changeCl(delta: number): void {
    const next = this.casterLevel() + delta;
    if (next >= 1 && next <= 20) {
      this.casterLevel.set(next);
    }
  }

  getCalculatedRange(rangeStr: string | null | undefined): string {
    if (!rangeStr) return '—';
    const cl = this.casterLevel();
    const lower = rangeStr.toLowerCase();

    if (lower.includes('contatto')) return 'Contatto (Mischia: 1,5 m)';
    if (lower.includes('personale')) return 'Personale (Solo Incantatore)';

    if (lower.includes('vicino') || lower.includes('close')) {
      const dist = 7.5 + 1.5 * Math.floor(cl / 2);
      return `${dist} metri (Vicino: 7,5m + 1,5m/2 LI)`;
    }
    if (lower.includes('medio') || lower.includes('medium')) {
      const dist = 30 + 3 * cl;
      return `${dist} metri (Medio: 30m + 3m/LI)`;
    }
    if (lower.includes('lungo') || lower.includes('long')) {
      const dist = 120 + 12 * cl;
      return `${dist} metri (Lungo: 120m + 12m/LI)`;
    }

    return rangeStr;
  }

  getCalculatedDuration(durStr: string | null | undefined): string {
    if (!durStr) return '—';
    const cl = this.casterLevel();
    const lower = durStr.toLowerCase();

    if (lower.includes('istantaneo') || lower.includes('istantanea')) return 'Istantaneo';
    if (lower.includes('permanente')) return 'Permanente';
    if (lower.includes('concentrazione')) return durStr;

    if (lower.includes('round/livello') || lower.includes('round per livello')) {
      return `${cl} round (${cl * 6} secondi)`;
    }
    if (lower.includes('10 min') || lower.includes('10 minuti')) {
      const totalMin = cl * 10;
      if (totalMin >= 60) {
        const h = Math.floor(totalMin / 60);
        const m = totalMin % 60;
        return `${totalMin} min (${h}h ${m > 0 ? m + 'm' : ''})`;
      }
      return `${totalMin} minuti`;
    }
    if (lower.includes('min/livello') || lower.includes('minuto/livello') || lower.includes('minuti per livello')) {
      return `${cl} minuti`;
    }
    if (lower.includes('ora/livello') || lower.includes('ore/livello') || lower.includes('ora per livello')) {
      return `${cl} ore`;
    }

    return durStr;
  }

  getCalculatedPower(desc: string | null | undefined): string | null {
    if (!desc) return null;
    const cl = this.casterLevel();

    // 1. Dadi con massimo: es. 1d6 per livello (massimo 5d6)
    const matchMax = desc.match(/(\d+)d(\d+)[^.;\n]*?(?:per|\/)\s*livello[^\(.;\n]*?\((?:massimo\vert{}max)\s*(\d+)d\d+\)/i);
    if (matchMax) {
      const dicePerLvl = parseInt(matchMax[1], 10);
      const dieFaces = matchMax[2];
      const maxDice = parseInt(matchMax[3], 10);
      const actualDice = Math.min(cl * dicePerLvl, maxDice);
      return `${actualDice}d${dieFaces} (Cap a ${maxDice}d${dieFaces})`;
    }

    // 2. Dadi senza limite: es. 1d6 per livello
    const matchNoMax = desc.match(/(\d+)d(\d+)\s*(?:danni|danno)?\s*(?:per|\/)\s*livello/i);
    if (matchNoMax) {
      const dicePerLvl = parseInt(matchNoMax[1], 10);
      const dieFaces = matchNoMax[2];
      const actualDice = cl * dicePerLvl;
      return `${actualDice}d${dieFaces} a LI ${cl}`;
    }

    // 3. Bonus fisso: es. +1 per livello (massimo +5)
    const matchBonus = desc.match(/\+\s*1\s*(?:per|\/)\s*livello[^\(.;\n]*?\((?:massimo\vert{}max)\s*\+(\d+)\)/i);
    if (matchBonus) {
      const maxBonus = parseInt(matchBonus[1], 10);
      const actualBonus = Math.min(cl, maxBonus);
      return `+${actualBonus} bonus (Cap a +${maxBonus})`;
    }

    return null;
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
    this.onlyNoSave.set(false);
    this.onlyNoSpellRes.set(false);
    this.onlySwiftAction.set(false);
    this.selectedSchool.set('Tutte');
    this.selectedSavingThrow.set('Tutti');
  }
}