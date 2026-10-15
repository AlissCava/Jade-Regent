import { Component, OnInit, inject, signal, computed } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { CharacterService } from '../../services/character.service';
import { CharacterRecord, CharacterSheetData, SkillItem, WeaponItem, FeatItem, SpecialResourceItem } from '../../models/character.model';
import { Router } from '@angular/router';
export interface RollResult {
  title: string;
  d20: number;
  rolls: number[];
  formula: string;
  total: number;
  isCrit: boolean;
  isFumble: boolean;
  breakdown: string;
}

@Component({
  selector: 'app-character-sheet',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './character-sheet.html',
  styleUrl: './character-sheet.scss'
})
export class CharacterSheetComponent implements OnInit {
  private charService = inject(CharacterService);
  private route = inject(ActivatedRoute);
  private router = inject(Router);

  characterSlug = 'ryoujin';
  loading = signal<boolean>(true);
  saving = signal<boolean>(false);
  saveSuccess = signal<boolean>(false);

  charRecord = signal<CharacterRecord | null>(null);
  activeTab = signal<'main' | 'companion' | 'roller'>('main');

  rollerSection = signal<'combat' | 'saves' | 'skills'>('combat');

  // MODIFICATORI DI LANCIO CHECKBOX
  modInspire = signal<boolean>(false);
  modDivineFavor = signal<boolean>(false);
  modPrayer = signal<boolean>(false);
  modChallenge = signal<boolean>(false);
  modFlank = signal<boolean>(false);
  modBanner = signal<boolean>(false);

  lastResult = signal<RollResult | null>(null);

  // ACCESSIBILITÀ SCREEN READER & TTS
  voiceAnnouncement = signal<string>('');
  ttsAudioEnabled = signal<boolean>(false);

  // MODALE MODIFICA & LEVEL UP
  showLevelUpModal = signal<boolean>(false);
  modalTab = signal<'general' | 'stats' | 'weapons' | 'feats' | 'skills' | 'companion'>('general');
  editLevel = signal<number>(1);
  editName = '';
  editClass = '';
  editData!: CharacterSheetData;

  // Campi per inserimento al volo
  newSkillName = '';
  newSkillStat = 'DES';
  newWpnName = '';
  newWpnAtk = '+0';
  newWpnDmg = '1d6';
  newWpnCrit = '20/x2';
  newWpnSpecial = '';
  newFeatTitle = '';
  newFeatTag = 'Generale';
  newFeatDesc = '';

  // BUFF TATTICI SCHEDA
  inspireCourage = signal<boolean>(false);
  bannerActive = signal<boolean>(false);
  challengeActive = signal<boolean>(false);
  flanking = signal<boolean>(false);
  divineFavorActive = signal<boolean>(false);
  powerAttack = signal<boolean>(false);

  // CALCOLI STATISTICHE DINAMICHE
  get charLevel(): number { return this.charRecord()?.level ?? 1; }
  get charBab(): number { return this.charRecord()?.data.character.bab ?? 0; }
  get charStrMod(): number {
    const str = this.charRecord()?.data.character.str ?? 10;
    return Math.floor((str - 10) / 2);
  }
  get charDexMod(): number {
    const dex = this.charRecord()?.data.character.dex ?? 10;
    return Math.floor((dex - 10) / 2);
  }

  attackMod = computed(() => {
    let mod = 0;
    if (this.inspireCourage()) mod += 2;
    if (this.bannerActive()) mod += 1;
    if (this.challengeActive()) mod += 2;
    if (this.flanking()) mod += 2;
    if (this.divineFavorActive()) mod += 2;
    if (this.powerAttack()) mod -= 2;
    return mod;
  });

  damageMod = computed(() => {
    let mod = 0;
    const lvl = this.charRecord()?.level || 1;
    if (this.inspireCourage()) mod += 2;
    if (this.challengeActive()) mod += lvl;
    if (this.divineFavorActive()) mod += 2;
    if (this.powerAttack()) mod += 4;
    return mod;
  });

  ngOnInit(): void {
    const paramSlug = this.route.snapshot.paramMap.get('slug');
    if (paramSlug) this.characterSlug = paramSlug.toLowerCase();
    this.loadCharacter();
  }

  loadCharacter(): void {
    this.loading.set(true);

    this.charService.getCharacter(this.characterSlug).subscribe({
      next: (rec) => {
        // Se la scheda esiste già nel DB Neon (es. Ryoujin o PG già salvati)
        this.setRecordData(rec);
        this.loading.set(false);
      },
      error: () => {
        // Se non esiste ancora su Neon: crea una SCHEDA COMPLETAMENTE VUOTA e salvala!
        const empty = this.generateEmptyTemplate(this.characterSlug);

        this.charService.createCharacter({
          slug: this.characterSlug,
          name: empty.name,
          class_name: empty.class_name,
          level: empty.level,
          data: empty.data
        }).subscribe({
          next: (res) => {
            this.setRecordData(res.character);
            this.loading.set(false);
          },
          error: () => {
            // Fallback locale in caso di disconnessione
            const mockRecord: CharacterRecord = {
              id: Date.now(),
              slug: this.characterSlug,
              name: empty.name,
              class_name: empty.class_name,
              level: empty.level,
              data: empty.data,
              updated_at: new Date().toISOString()
            };
            this.setRecordData(mockRecord);
            this.loading.set(false);
          }
        });
      }
    });
  }

  private setRecordData(rec: CharacterRecord): void {
    if (!rec.data.character.weapons) rec.data.character.weapons = [];
    if (!rec.data.character.feats) rec.data.character.feats = [];
    if (!rec.data.character.special_resources) rec.data.character.special_resources = [];
    if (!rec.data.character.skills) rec.data.character.skills = [];

    this.charRecord.set(rec);
    this.editLevel.set(rec.level);
    this.editName = rec.name;
    this.editClass = rec.class_name;
    this.editData = JSON.parse(JSON.stringify(rec.data));
  }

  // --- SCHEDA VUOTA DA COMPILARE DA ZERO ---
  private generateEmptyTemplate(slug: string): { name: string; class_name: string; level: number; data: CharacterSheetData } {
    const defaultName = slug.charAt(0).toUpperCase() + slug.slice(1);
    return {
      name: defaultName,
      class_name: '',
      level: 1,
      data: {
        character: {
          race: '',
          alignment: '',
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
      }
    };
  }

  // --- MODIFICA RAPIDA PUNTI FERITA (SALVA SU NEON) ---
  modifyHp(target: 'main' | 'companion', amount: number): void {
    const rec = this.charRecord();
    if (!rec) return;

    if (target === 'main') {
      const cur = rec.data.character.hp_current;
      const max = rec.data.character.hp_max;
      rec.data.character.hp_current = Math.max(0, Math.min(max, cur + amount));
      this.voiceAnnouncement.set(`Punti ferita: ${rec.data.character.hp_current} su ${max}`);
    } else if (rec.data.companion) {
      const cur = rec.data.companion.hp_current;
      const max = rec.data.companion.hp_max;
      rec.data.companion.hp_current = Math.max(0, Math.min(max, cur + amount));
    }

    this.charRecord.set({ ...rec });
    this.charService.saveCharacter(rec.slug, rec.level, rec.data).subscribe();
  }

  toggleResource(res: SpecialResourceItem, index: number): void {
    res.current = res.current > index ? index : index + 1;
    const rec = this.charRecord();
    if (rec) {
      this.charService.saveCharacter(rec.slug, rec.level, rec.data).subscribe();
    }
  }

  // --- APRE LA MODALE DIRETTAMENTE SULLA SCHEDA GIUSTA ---
  openLevelUp(): void {
    this.openLevelUpTab('general');
  }

  openLevelUpTab(tab: 'general' | 'stats' | 'weapons' | 'feats' | 'skills' | 'companion'): void {
    const rec = this.charRecord();
    if (!rec) return;

    this.editLevel.set(rec.level);
    this.editName = rec.name;
    this.editClass = rec.class_name;
    this.editData = JSON.parse(JSON.stringify(rec.data));

    if (!this.editData.character.weapons) this.editData.character.weapons = [];
    if (!this.editData.character.feats) this.editData.character.feats = [];
    if (!this.editData.character.special_resources) this.editData.character.special_resources = [];
    if (!this.editData.character.skills) this.editData.character.skills = [];

    this.modalTab.set(tab);
    this.showLevelUpModal.set(true);
  }

  addWeapon(): void {
    if (!this.newWpnName.trim()) return;
    this.editData.character.weapons?.push({
      name: this.newWpnName.trim(),
      attack_bonus: this.newWpnAtk.trim(),
      damage: this.newWpnDmg.trim(),
      crit: this.newWpnCrit.trim(),
      special: this.newWpnSpecial.trim()
    });
    this.newWpnName = '';
    this.newWpnSpecial = '';
  }

  removeWeapon(index: number): void {
    this.editData.character.weapons?.splice(index, 1);
  }

  addFeat(): void {
    if (!this.newFeatTitle.trim()) return;
    this.editData.character.feats?.push({
      name: this.newFeatTitle.trim(),
      tag: this.newFeatTag.trim(),
      description: this.newFeatDesc.trim()
    });
    this.newFeatTitle = '';
    this.newFeatDesc = '';
  }

  removeFeat(index: number): void {
    this.editData.character.feats?.splice(index, 1);
  }

  adjustSkill(skill: SkillItem, delta: number): void {
    skill.bonus += delta;
  }

  addCustomSkill(): void {
    if (!this.newSkillName.trim()) return;
    this.editData.character.skills?.push({
      name: this.newSkillName.trim(),
      stat: this.newSkillStat,
      bonus: 0
    });
    this.newSkillName = '';
  }

  removeSkill(index: number): void {
    this.editData.character.skills?.splice(index, 1);
  }

  saveLevelUp(): void {
    this.saving.set(true);

    this.charService.saveCharacter(
      this.characterSlug,
      this.editLevel(),
      this.editData,
      this.editName,
      this.editClass
    ).subscribe({
      next: (res) => {
        this.setRecordData(res.character);
        this.saving.set(false);
        this.saveSuccess.set(true);
        setTimeout(() => {
          this.saveSuccess.set(false);
          this.showLevelUpModal.set(false);
        }, 500);
      },
      error: (err) => {
        console.error('Errore salvataggio scheda:', err);
        this.saving.set(false);
      }
    });
  }

  // --- LANCIATORE DADI DINAMICO ---
  rollAction(title: string, diceCount: number, diceFaces: number, mod: number, critMin = 20): void {
    const rolls: number[] = [];
    let sum = 0;
    for (let i = 0; i < diceCount; i++) {
      const r = Math.floor(Math.random() * diceFaces) + 1;
      rolls.push(r);
      sum += r;
    }

    let extraMod = 0;
    if (this.modInspire()) extraMod += 2;
    if (this.modBanner()) extraMod += 1;
    if (this.modFlank()) extraMod += 2;
    if (this.modDivineFavor()) extraMod += 2;
    if (this.modPrayer()) extraMod += 1;

    const total = sum + mod + extraMod;
    const d20 = diceFaces === 20 ? rolls[0] : 0;
    const isCrit = d20 >= critMin;
    const isFumble = d20 === 1;

    this.lastResult.set({
      title,
      d20,
      rolls,
      formula: `${diceCount}d${diceFaces} + ${mod + extraMod}`,
      total,
      isCrit,
      isFumble,
      breakdown: `Dadi [${rolls.join(', ')}] + Mod: ${mod} ${extraMod ? '(+' + extraMod + ' buff)' : ''}`
    });

    const phrase = `${title}: risultato ${total}.`;
    this.voiceAnnouncement.set(phrase);
    if (this.ttsAudioEnabled() && typeof window !== 'undefined' && 'speechSynthesis' in window) {
      window.speechSynthesis.cancel();
      const u = new SpeechSynthesisUtterance(phrase);
      u.lang = 'it-IT';
      window.speechSynthesis.speak(u);
    }
  }

  quickRoll(faces: number): void {
    const r = Math.floor(Math.random() * faces) + 1;
    this.lastResult.set({
      title: `Tiro 1d${faces}`,
      d20: faces === 20 ? r : 0,
      rolls: [r],
      formula: `1d${faces}`,
      total: r,
      isCrit: r === 20,
      isFumble: r === 1,
      breakdown: `Dado: ${r}`
    });
  }

  // ELIMINA SCHEDA DIRETTAMENTE DALL'INTERNO
  deleteCurrentCharacter(): void {
    const name = this.editName || this.characterSlug;
    if (!confirm(`Sei sicura di voler eliminare definitivamente la scheda di "${name}"? I dati verranno rimossi da Neon DB.`)) {
      return;
    }

    this.saving.set(true);
    this.charService.deleteCharacter(this.characterSlug).subscribe({
      next: () => {
        try {
          const raw = localStorage.getItem('jade_regent_deleted_slugs');
          const set: string[] = raw ? JSON.parse(raw) : [];
          if (!set.includes(this.characterSlug)) set.push(this.characterSlug);
          localStorage.setItem('jade_regent_deleted_slugs', JSON.stringify(set));
        } catch {}

        this.saving.set(false);
        this.showLevelUpModal.set(false);
        this.router.navigate(['/characters']);
      },
      error: () => {
        this.saving.set(false);
        this.showLevelUpModal.set(false);
        this.router.navigate(['/characters']);
      }
    });
  }
}