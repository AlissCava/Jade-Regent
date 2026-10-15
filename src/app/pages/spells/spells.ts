import { Component, OnInit, inject, signal, computed } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { SpellService } from '../../services/spell.service';
import { Spell } from '../../models/spell.model';

export type SpellClassFilter = 'all' | 'druid' | 'magus' | 'bard';

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

  // Lista incantesimi da server
  spells = signal<Spell[]>([]);
  loading = signal<boolean>(true);
  selectedSpell = signal<Spell | null>(null);

  // Filtri Principali
  spellSearch = signal<string>('');
  filtersOpen = signal<boolean>(false);
  casterLevel = signal<number>(7); // Default LI 7 (livello attuale del party)
  selectedClass = signal<SpellClassFilter>('all');
  selectedSchool = signal<string>('Tutte');
  selectedSavingThrow = signal<string>('Tutti');
  selectedSpellLevel = signal<string>('all');

  // Filtri Tattici
  onlyTouch = signal<boolean>(false);
  onlyNoSave = signal<boolean>(false);
  onlyNoSpellRes = signal<boolean>(false);
  onlySwiftAction = signal<boolean>(false);

  // PREFERITI IN LOCALSTORAGE
  favoriteSpellIds = signal<Set<number>>(new Set());
  onlyFavorites = signal<boolean>(false);

  // Conteggio Preferiti
  favCount = computed(() => this.favoriteSpellIds().size);

  // Lista Filtrata Reattiva
  filteredSpells = computed(() => {
    const q = this.spellSearch().toLowerCase().trim();
    const cls = this.selectedClass();
    const sch = this.selectedSchool();
    const st = this.selectedSavingThrow();
    const lvl = this.selectedSpellLevel();
    const touch = this.onlyTouch();
    const noSave = this.onlyNoSave();
    const noSr = this.onlyNoSpellRes();
    const swift = this.onlySwiftAction();
    const favOnly = this.onlyFavorites();
    const favSet = this.favoriteSpellIds();

    return this.spells().filter((sp) => {
      // 1. Filtro Preferiti
      if (favOnly && !favSet.has(sp.id)) return false;

      // 2. Filtro Ricerca (ITA o ENG o descrizione)
      if (q) {
        const matchName = sp.name?.toLowerCase().includes(q);
        const matchEn = sp.english_name?.toLowerCase().includes(q);
        const matchDesc = sp.short_description?.toLowerCase().includes(q);
        if (!matchName && !matchEn && !matchDesc) return false;
      }

      // 3. Filtro Classe
      if (cls === 'druid' && (sp.druid_level === null || sp.druid_level === undefined)) return false;
      if (cls === 'magus' && (sp.magus_level === null || sp.magus_level === undefined)) return false;
      if (cls === 'bard' && (sp.bard_level === null || sp.bard_level === undefined)) return false;

      // 4. Filtro Livello Incantesimo
      if (lvl !== 'all') {
        const targetLvl = parseInt(lvl, 10);
        if (cls === 'druid' && sp.druid_level !== targetLvl) return false;
        if (cls === 'magus' && sp.magus_level !== targetLvl) return false;
        if (cls === 'bard' && sp.bard_level !== targetLvl) return false;
        if (cls === 'all') {
          const matchAny =
            sp.druid_level === targetLvl ||
            sp.magus_level === targetLvl ||
            sp.bard_level === targetLvl;
          if (!matchAny) return false;
        }
      }

      // 5. Filtro Scuola di Magia
      if (sch !== 'Tutte') {
        if (!sp.school || !sp.school.toLowerCase().includes(sch.toLowerCase())) return false;
      }

      // 6. Filtro Tiro Salvezza
      if (st !== 'Tutti') {
        if (st === 'Nessuno') {
          if (sp.saving_throw && !sp.saving_throw.toLowerCase().includes('nessun')) return false;
        } else {
          if (!sp.saving_throw || !sp.saving_throw.toLowerCase().includes(st.toLowerCase())) return false;
        }
      }

      // 7. Filtri Tattici Rapidi
      if (touch) {
        const r = (sp.range || '').toLowerCase();
        if (!r.includes('contatto') && !r.includes('touch')) return false;
      }

      if (noSave) {
        const s = (sp.saving_throw || '').toLowerCase();
        if (!s.includes('nessun') && !s.includes('none') && s !== '') return false;
      }

      if (noSr) {
        const sr = (sp.spell_res || '').toLowerCase();
        if (sr.includes('sì') || sr.includes('si') || sr.includes('yes')) return false;
      }

      if (swift) {
        const ct = (sp.casting_time || '').toLowerCase();
        if (!ct.includes('veloce') && !ct.includes('rapida') && !ct.includes('swift') && !ct.includes('immediata')) {
          return false;
        }
      }

      return true;
    });
  });

  ngOnInit(): void {
    this.loadFavoritesFromStorage();
    this.loadSpells();
  }

  loadSpells(): void {
    this.loading.set(true);
    this.spellService.getSpells().subscribe({
      next: (data) => {
        this.spells.set(data || []);
        this.loading.set(false);
      },
      error: (err) => {
        console.error('Errore recupero incantesimi:', err);
        this.loading.set(false);
      }
    });
  }

  // --- GESTIONE PREFERITI IN LOCALSTORAGE ---
  private loadFavoritesFromStorage(): void {
    try {
      const stored = localStorage.getItem('jade_regent_fav_spells');
      if (stored) {
        const ids: number[] = JSON.parse(stored);
        this.favoriteSpellIds.set(new Set(ids));
      }
    } catch (e) {
      console.warn('Impossibile caricare i preferiti da localStorage', e);
    }
  }

  toggleFavorite(id: number, event?: Event): void {
    if (event) {
      event.stopPropagation(); // Evita l'apertura accidentale della modale
    }

    this.favoriteSpellIds.update((set) => {
      const next = new Set(set);
      if (next.has(id)) {
        next.delete(id);
      } else {
        next.add(id);
      }
      try {
        localStorage.setItem('jade_regent_fav_spells', JSON.stringify(Array.from(next)));
      } catch (e) {
        console.warn('Errore salvataggio preferiti in localStorage', e);
      }
      return next;
    });
  }

  isFavorite(id: number): boolean {
    return this.favoriteSpellIds().has(id);
  }

  // --- CONTROLLI INTERFACCIA & STEPPER LI ---
  toggleFilters(): void {
    this.filtersOpen.update((v) => !v);
  }

  changeCl(delta: number): void {
    this.casterLevel.update((cl) => Math.max(1, Math.min(20, cl + delta)));
  }

  // --- CALCOLI DINAMICI SCALATI SU LI ---
  getCalculatedRange(range: string | null): string {
    if (!range) return '—';
    const r = range.toLowerCase();
    const cl = this.casterLevel();

    if (r.includes('vicino') || r.includes('close')) {
      const m = 7.5 + Math.floor(cl / 2) * 1.5;
      return `${m} m (${Math.round(m / 1.5)} caselle)`;
    }
    if (r.includes('medio') || r.includes('medium')) {
      const m = 30 + cl * 3;
      return `${m} m (${Math.round(m / 1.5)} caselle)`;
    }
    if (r.includes('lungo') || r.includes('long')) {
      const m = 120 + cl * 12;
      return `${m} m (${Math.round(m / 1.5)} caselle)`;
    }
    if (r.includes('contatto') || r.includes('touch')) return 'Contatto (1 casella)';
    if (r.includes('personale') || r.includes('personal')) return 'Personale';
    return range;
  }

  getCalculatedDuration(duration: string | null): string {
    if (!duration) return '—';
    const d = duration.toLowerCase();
    const cl = this.casterLevel();

    if (d.includes('round/livello') || d.includes('round/level')) {
      return `${cl} round (${cl * 6} sec)`;
    }
    if (d.includes('minuto/livello') || d.includes('min/livello') || d.includes('min/level')) {
      return `${cl} minuti (${cl * 10} turni)`;
    }
    if (d.includes('10 min/livello') || d.includes('10 min./livello')) {
      return `${cl * 10} minuti`;
    }
    if (d.includes('ora/livello') || d.includes('ore/livello') || d.includes('hour/level')) {
      return `${cl} ore`;
    }
    if (d.includes('istantaneo') || d.includes('instantaneous')) return 'Istantaneo';
    return duration;
  }

  getQuickCardMetric(sp: Spell): string | null {
    const desc = (sp.full_description || sp.short_description || '').toLowerCase();
    const cl = this.casterLevel();

    if (desc.includes('1d6 per livello') || desc.includes('1d6 danni per livello')) {
      const cap = desc.includes('massimo 5d6') ? 5 : desc.includes('massimo 10d6') ? 10 : 15;
      return `Danni scalati: ${Math.min(cl, cap)}d6`;
    }
    if (desc.includes('1d4 per livello') || desc.includes('1d4+1')) {
      return `Danni scalati: ${Math.min(cl, 5)}d4+${Math.min(cl, 5)}`;
    }
    return null;
  }

  getCalculatedMetrics(sp: Spell | null): CalculatedMetric[] {
    if (!sp) return [];
    const cl = this.casterLevel();
    const metrics: CalculatedMetric[] = [
      { icon: '📏', label: 'Gittata a LI attuale', value: this.getCalculatedRange(sp.range), highlight: true },
      { icon: '⏳', label: 'Durata a LI attuale', value: this.getCalculatedDuration(sp.duration), highlight: true }
    ];

    const quick = this.getQuickCardMetric(sp);
    if (quick) {
      metrics.push({ icon: '💥', label: 'Formula Potenziata', value: quick, highlight: true });
    }

    return metrics;
  }
}