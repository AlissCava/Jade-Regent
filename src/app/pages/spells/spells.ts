import { Component, OnInit, inject, signal, computed } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { SpellService } from '../../services/spell.service';
import { Spell } from '../../models/spell.model';

export interface CalculatedMetric {
  icon: string;
  label: string;
  value: string;
  highlight?: boolean;
}

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
  filtersOpen = signal<boolean>(false);
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
  toggleFilters(): void {
    this.filtersOpen.update(v => !v);
  }
  
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
    if (next >= 1 && next <= 25) {
      this.casterLevel.set(next);
    }
  }

  getCalculatedRange(rangeStr: string | null | undefined): string {
    if (!rangeStr) return '—';
    const cl = this.casterLevel();
    const lower = rangeStr.toLowerCase();

    if (lower.includes('contatto')) return 'Contatto • 1 casella (1,5 m)';
    if (lower.includes('personale')) return 'Personale (Incantatore)';

    if (lower.includes('vicino') || lower.includes('close')) {
      const dist = 7.5 + 1.5 * Math.floor(cl / 2);
      const squares = 5 + Math.floor(cl / 2);
      return `${dist} m (${squares} caselle)`;
    }
    if (lower.includes('medio') || lower.includes('medium')) {
      const dist = 30 + 3 * cl;
      const squares = 20 + 2 * cl;
      return `${dist} m (${squares} caselle)`;
    }
    if (lower.includes('lungo') || lower.includes('long')) {
      const dist = 120 + 12 * cl;
      const squares = 80 + 8 * cl;
      return `${dist} m (${squares} caselle)`;
    }

    const numMatch = lower.match(/(\d+(?:,\d+)?)\s*m/);
    if (numMatch) {
      const meters = parseFloat(numMatch[1].replace(',', '.'));
      const squares = Math.round(meters / 1.5);
      return `${meters} m (${squares} caselle)`;
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
      return `${cl} round (${cl} turni • ${cl * 6}s)`;
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
      return `${cl} minuti (${cl * 10} turni)`;
    }
    if (lower.includes('ora/livello') || lower.includes('ore/livello') || lower.includes('ora per livello')) {
      return `${cl} ore`;
    }
    if (lower.includes('giorn')) {
      return `${cl} giorni`;
    }

    return durStr;
  }

  getCalculatedMetrics(spell: Spell | null | undefined): CalculatedMetric[] {
    if (!spell) return [];
    const cl = this.casterLevel();
    const metrics: CalculatedMetric[] = [];
    const text = ((spell.full_description || '') + ' ' + (spell.short_description || '')).toLowerCase();
    const sName = spell.name.toLowerCase();

    metrics.push({
      icon: '📏',
      label: 'Raggio Effettivo',
      value: this.getCalculatedRange(spell.range),
      highlight: true
    });

    metrics.push({
      icon: '⏳',
      label: 'Durata Effettiva',
      value: this.getCalculatedDuration(spell.duration),
      highlight: true
    });

    if (spell.spell_res && spell.spell_res.toLowerCase().trim() !== 'no') {
      metrics.push({
        icon: '🎲',
        label: 'Superamento RI',
        value: `1d20 + ${cl} (LI)`,
        highlight: false
      });
    }

    // Incantesimi specifici con scaling aperto (senza blocco Math.min per talenti come Intensificati)
    if (sName.includes('dardo incantato') || sName.includes('magic missile')) {
      const missiles = 1 + Math.floor((cl - 1) / 2);
      metrics.push({
        icon: '✨',
        label: 'Dardi Creati',
        value: `${missiles} Dardi (${missiles}d4 + ${missiles}) • base max 5`,
        highlight: true
      });
    } else if (sName.includes('raggio rovente') || sName.includes('scorching ray')) {
      const rays = 1 + Math.floor(Math.max(0, cl - 3) / 4);
      metrics.push({
        icon: '🔥',
        label: 'Raggi di Fuoco',
        value: `${rays} Raggi (${rays * 4}d6 fuoco) • base max 3`,
        highlight: true
      });
    } else if (sName.includes('cura ferite leggere')) {
      metrics.push({ icon: '💚', label: 'Cura Effettiva', value: `1d8 + ${cl} PF (base max +5)`, highlight: true });
    } else if (sName.includes('cura ferite moderate')) {
      metrics.push({ icon: '💚', label: 'Cura Effettiva', value: `2d8 + ${cl} PF (base max +10)`, highlight: true });
    } else if (sName.includes('cura ferite gravi')) {
      metrics.push({ icon: '💚', label: 'Cura Effettiva', value: `3d8 + ${cl} PF (base max +15)`, highlight: true });
    } else if (sName.includes('cura ferite critiche')) {
      metrics.push({ icon: '💚', label: 'Cura Effettiva', value: `4d8 + ${cl} PF (base max +20)`, highlight: true });
    } else if (sName.includes('stretta folgorante') || sName.includes('shocking grasp')) {
      metrics.push({
        icon: '⚡',
        label: 'Danno Elettrico',
        value: `${cl}d6 (base max 5d6, superabile con Incantesimi Intensificati)`,
        highlight: true
      });
    } else {
      // Danno generico da testo
      const matchDiceMax = text.match(/(\d+)d(\d+)[^.;\n]*?(?:per|\/)\s*livello[^\(.;\n]*?\((?:massimo\vert{}max)\s*(\d+)d\d+\)/);
      if (matchDiceMax) {
        const dicePerLvl = parseInt(matchDiceMax[1], 10);
        const faces = matchDiceMax[2];
        const maxDice = parseInt(matchDiceMax[3], 10);
        const actualDice = cl * dicePerLvl; // Scala liberamente con il LI
        metrics.push({
          icon: '💥',
          label: 'Danno Scalato',
          value: `${actualDice}d${faces} (base max ${maxDice}d${faces})`,
          highlight: true
        });
      } else {
        const matchDiceSimple = text.match(/(\d+)d(\d+)\s*(?:danni|danno)?\s*(?:per|\/)\s*livello/);
        if (matchDiceSimple) {
          const actualDice = cl * parseInt(matchDiceSimple[1], 10);
          metrics.push({
            icon: '💥',
            label: 'Danno Scalato',
            value: `${actualDice}d${matchDiceSimple[2]}`,
            highlight: true
          });
        }
      }

      // Bonus numerici
      const matchBonus = text.match(/\+\s*1\s*(?:per|\/)\s*livello[^\(.;\n]*?\((?:massimo\vert{}max)\s*\+(\d+)\)/);
      if (matchBonus) {
        const maxB = parseInt(matchBonus[1], 10);
        metrics.push({
          icon: '➕',
          label: 'Bonus Numerico',
          value: `+${cl} (base max +${maxB})`,
          highlight: true
        });
      }
    }

    if (text.includes('1 creatura/livello') || text.includes('un bersaglio per livello') || text.includes('una creatura per livello')) {
      metrics.push({
        icon: '👥',
        label: 'Bersagli Massimi',
        value: `${cl} creature (entro 9 m l'una dall'altra)`,
        highlight: false
      });
    }

    return metrics;
  }

  getQuickCardMetric(spell: Spell): string | null {
    const list = this.getCalculatedMetrics(spell);
    const power = list.find(m => m.label.includes('Danno') || m.label.includes('Cura') || m.label.includes('Dardi') || m.label.includes('Raggi'));
    if (power) return `${power.icon} ${power.label}: ${power.value}`;
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