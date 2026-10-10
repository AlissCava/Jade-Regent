import { Component, OnInit, inject, signal, computed } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { SpellService } from '../../services/spell.service';
import { Spell } from '../../models/spell.model';

@Component({
  selector: 'app-spells',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './spells.html',
  styleUrl: './spells.scss'
})
export class SpellsComponent implements OnInit {
  private spellService = inject(SpellService);

  spells = signal<Spell[]>([]);
  loadingSpells = signal<boolean>(true);
  spellSearch = signal<string>('');
  selectedClass = signal<'druid' | 'magus' | 'all'>('druid');
  selectedSpellLevel = signal<string>('all');
  
  // LIVELLO INCANTATORE
  casterLevel = signal<number>(7);

  // Filtri Tattici
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

      if (noSave) {
        const hasNoSave = s.saving_throw && s.saving_throw.toLowerCase().includes('nessun');
        if (!hasNoSave) return false;
      }

      if (noSr) {
        const ignoresSr = s.spell_res && s.spell_res.toLowerCase().trim() === 'no';
        if (!ignoresSr) return false;
      }

      if (swift) {
        const isSwift = s.casting_time && (
          s.casting_time.toLowerCase().includes('veloce') || 
          s.casting_time.toLowerCase().includes('immediat')
        );
        if (!isSwift) return false;
      }

      if (school !== 'Tutte') {
        if (!s.school || !s.school.toLowerCase().includes(school.toLowerCase())) return false;
      }

      if (saveType !== 'Tutti') {
        if (!s.saving_throw || !s.saving_throw.toLowerCase().includes(saveType.toLowerCase())) return false;
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
    this.spellService.getSpells().subscribe({
      next: (data) => {
        this.spells.set(data);
        this.loadingSpells.set(false);
      },
      error: () => this.loadingSpells.set(false)
    });
  }

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

    if (lower.includes('contatto')) return 'Contatto (1,5 m)';
    if (lower.includes('personale')) return 'Personale';

    if (lower.includes('vicino') || lower.includes('close')) {
      const dist = 7.5 + 1.5 * Math.floor(cl / 2);
      return `${dist} metri (Vicino)`;
    }
    if (lower.includes('medio') || lower.includes('medium')) {
      const dist = 30 + 3 * cl;
      return `${dist} metri (Medio)`;
    }
    if (lower.includes('lungo') || lower.includes('long')) {
      const dist = 120 + 12 * cl;
      return `${dist} metri (Lungo)`;
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
      return `${cl} round (${cl * 6}s)`;
    }
    if (lower.includes('10 min') || lower.includes('10 minuti')) {
      const totalMin = cl * 10;
      if (totalMin >= 60) {
        const h = Math.floor(totalMin / 60);
        const m = totalMin % 60;
        return `${totalMin}m (${h}h ${m > 0 ? m + 'm' : ''})`;
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

    const matchMax = desc.match(/(\d+)d(\d+)[^.;\n]*?(?:per|\/)\s*livello[^\(.;\n]*?\((?:massimo\vert{}max)\s*(\d+)d\d+\)/i);
    if (matchMax) {
      const dicePerLvl = parseInt(matchMax[1], 10);
      const dieFaces = matchMax[2];
      const maxDice = parseInt(matchMax[3], 10);
      const actualDice = Math.min(cl * dicePerLvl, maxDice);
      return `${actualDice}d${dieFaces} (Cap: ${maxDice}d${dieFaces})`;
    }

    const matchNoMax = desc.match(/(\d+)d(\d+)\s*(?:danni|danno)?\s*(?:per|\/)\s*livello/i);
    if (matchNoMax) {
      const dicePerLvl = parseInt(matchNoMax[1], 10);
      const dieFaces = matchNoMax[2];
      const actualDice = cl * dicePerLvl;
      return `${actualDice}d${dieFaces}`;
    }

    const matchBonus = desc.match(/\+\s*1\s*(?:per|\/)\s*livello[^\(.;\n]*?\((?:massimo\vert{}max)\s*\+(\d+)\)/i);
    if (matchBonus) {
      const maxBonus = parseInt(matchBonus[1], 10);
      const actualBonus = Math.min(cl, maxBonus);
      return `+${actualBonus} (Cap: +${maxBonus})`;
    }

    return null;
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