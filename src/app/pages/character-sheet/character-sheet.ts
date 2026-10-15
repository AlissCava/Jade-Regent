import { Component, OnInit, inject, signal, computed } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Router, ActivatedRoute } from '@angular/router';
import { CharacterService } from '../../services/character.service';
import { CharacterRecord, CharacterSheetData, SkillItem, WeaponItem, FeatItem, SpecialResourceItem } from '../../models/character.model';

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

const DEFAULT_RYOUJIN_SKILLS: SkillItem[] = [
  { name: 'Acrobazia', stat: 'DES', bonus: -3 },
  { name: 'Addestrare animali', stat: 'CAR', bonus: 10 },
  { name: 'Artista della fuga', stat: 'DES', bonus: -3 },
  { name: 'Camuffare', stat: 'CAR', bonus: 3 },
  { name: 'Cavalcare', stat: 'DES', bonus: 13 },
  { name: 'Diplomazia', stat: 'CAR', bonus: 5 },
  { name: 'Furtività', stat: 'DES', bonus: -3 },
  { name: 'Guarire', stat: 'SAG', bonus: 1 },
  { name: 'Intimidire', stat: 'CAR', bonus: 11 },
  { name: 'Percepire intenzioni', stat: 'SAG', bonus: 10 },
  { name: 'Percezione', stat: 'SAG', bonus: 7 },
  { name: 'Raggirare', stat: 'CAR', bonus: 5 },
  { name: 'Scalare', stat: 'FOR', bonus: 7 },
  { name: 'Valutare', stat: 'INT', bonus: 5 },
  { name: 'Conoscenze locali', stat: 'INT', bonus: 10 },
  { name: 'Conoscenze nobiltà', stat: 'INT', bonus: 6 },
  { name: 'Nuotare', stat: 'FOR', bonus: 7 }
];

const DEFAULT_HISUI_SKILLS: SkillItem[] = [
  { name: 'Acrobazia', stat: 'DES', bonus: 8 },
  { name: 'Furtività', stat: 'DES', bonus: 8 },
  { name: 'Percezione', stat: 'SAG', bonus: 7 },
  { name: 'Sopravvivenza', stat: 'SAG', bonus: 6 },
  { name: 'Intimidire', stat: 'CAR', bonus: 5 }
];

const DEFAULT_HISUI_COMPANION = {
  name: 'Hisui',
  type: 'Lupo da Guerra (Compagno Animale)',
  hd: 6,
  hp_max: 62,
  hp_current: 62,
  ac_total: 21,
  ac_touch: 12,
  ac_flat_footed: 19,
  initiative: 2,
  speed_meters: 15,
  speed_squares: 10,
  fortitude: 8,
  reflex: 7,
  will: 3,
  str: 25,
  dex: 15,
  con: 16,
  int: 2,
  wis: 12,
  cha: 6,
  attack_name: 'Morso Primario',
  attack_bonus: 11,
  damage_dice: '1d8+10',
  trip_cmb: 11,
  skills: [...DEFAULT_HISUI_SKILLS]
};

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

  // Identifica se la scheda visualizzata è Ryoujin
  isRyoujin = computed(() => this.characterSlug.toLowerCase() === 'ryoujin');

  // ROULETTE & LANCIATORE DADI
  rollerChar = signal<'ryoujin' | 'hisui'>('ryoujin');
  rollerSection = signal<'combat' | 'damage' | 'saves' | 'skills'>('combat');

  // MODIFICATORI ROLL CHECKBOX
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
  editLevel = signal<number>(7);
  editName = '';
  editClass = '';
  editData!: CharacterSheetData;

  // Campi inserimento generico al volo
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

  // BUFF TATTICI SCHEDA RYOUJIN
  inspireCourage = signal<boolean>(false);
  bannerActive = signal<boolean>(false);
  challengeActive = signal<boolean>(false);
  flanking = signal<boolean>(false);
  divineFavorActive = signal<boolean>(false);
  powerAttack = signal<boolean>(false);
  powerAttackHisui = signal<boolean>(false);

  // ==================== CALCOLI SPECIFICI RYOUJIN (100% DINAMICI) ====================
  get ryoujinLevel(): number { return this.charRecord()?.level ?? 7; }
  get ryoujinBab(): number { return this.charRecord()?.data.character.bab ?? 7; }
  get ryoujinStrMod(): number {
    const str = this.charRecord()?.data.character.str ?? 22;
    return Math.floor((str - 10) / 2);
  }
  get ryoujinDexMod(): number {
    const dex = this.charRecord()?.data.character.dex ?? 15;
    return Math.floor((dex - 10) / 2);
  }

  get powerAtkPenalty(): number { return 1 + Math.floor(this.ryoujinBab / 4); }
  get powerAtkDmgTwoHand(): number { return this.powerAtkPenalty * 3; }

  get maxResolve(): number { return Math.max(1, Math.floor(this.ryoujinLevel / 2)); }
  get resolvePips(): number[] { return Array.from({ length: this.maxResolve }, (_, i) => i); }

  get maxChallenge(): number { return Math.max(1, Math.ceil(this.ryoujinLevel / 3)); }
  get challengePips(): number[] { return Array.from({ length: this.maxChallenge }, (_, i) => i); }

  get katana1TxC(): number { return this.ryoujinBab + this.ryoujinStrMod + 1; }
  get katana1CritTxC(): number { return this.katana1TxC + 2; }
  get katana2TxC(): number { return Math.max(0, this.ryoujinBab - 5) + this.ryoujinStrMod + 1 - this.powerAtkPenalty; }
  get katana2CritTxC(): number { return this.katana2TxC + 2; }

  get suishen1TxC(): number { return this.ryoujinBab + this.ryoujinStrMod + 2; }
  get suishen1CritTxC(): number { return this.suishen1TxC + 2; }
  get suishen2TxC(): number { return Math.max(0, this.ryoujinBab - 5) + this.ryoujinStrMod + 2 - this.powerAtkPenalty; }
  get suishen2CritTxC(): number { return this.suishen2TxC + 2; }

  get bow1TxC(): number { return this.ryoujinBab + this.ryoujinDexMod + 1; }
  get bow2TxC(): number { return Math.max(0, this.ryoujinBab - 5) + this.ryoujinDexMod + 1; }

  get bmcTxC(): number { return this.ryoujinBab + this.ryoujinStrMod + 1; }

  get katanaPodDmg(): number { return Math.floor(this.ryoujinStrMod * 1.5) + 1 + this.powerAtkDmgTwoHand; }
  get suishenDmg(): number { return Math.floor(this.ryoujinStrMod * 1.5) + 2 + this.powerAtkDmgTwoHand; }
  get bowDmg(): number { return Math.min(this.ryoujinStrMod, 2) + 1; }

  // Statistiche Lupo Hisui
  get hisuiStrMod(): number {
    const str = this.charRecord()?.data.companion?.str ?? 25;
    return Math.floor((str - 10) / 2);
  }
  get hisuiBiteTxC(): number { return this.charRecord()?.data.companion?.attack_bonus ?? 11; }
  get hisuiBitePodTxC(): number { return this.hisuiBiteTxC - 2; }
  get hisuiTripCmb(): number { return this.charRecord()?.data.companion?.trip_cmb ?? 11; }
  get hisuiBitePodDmg(): number { return Math.floor(this.hisuiStrMod * 1.5) + 6; }
  get hisuiBiteBaseDmg(): number { return Math.floor(this.hisuiStrMod * 1.5); }

  attackMod = computed(() => {
    let mod = 0;
    if (this.inspireCourage()) mod += 2;
    if (this.flanking()) mod += 2;
    if (this.isRyoujin()) {
      if (this.bannerActive()) mod += 1;
      if (this.challengeActive()) mod += 2;
      if (this.divineFavorActive()) mod += 2;
      if (this.powerAttack()) mod -= 2;
    }
    return mod;
  });

  damageMod = computed(() => {
    let mod = 0;
    if (this.inspireCourage()) mod += 2;
    if (this.isRyoujin()) {
      const lvl = this.charRecord()?.level || 7;
      if (this.challengeActive()) mod += lvl;
      if (this.divineFavorActive()) mod += 2;
      if (this.powerAttack()) mod += 6;
    }
    return mod;
  });

  attackModHisui = computed(() => {
    let mod = 0;
    if (this.inspireCourage()) mod += 2;
    if (this.bannerActive()) mod += 1;
    if (this.flanking()) mod += 2;
    if (this.powerAttackHisui()) mod -= 2;
    return mod;
  });

  damageModHisui = computed(() => {
    let mod = 0;
    if (this.inspireCourage()) mod += 2;
    if (this.powerAttackHisui()) mod += 6;
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
        this.setRecordData(rec);
        this.loading.set(false);
      },
      error: () => {
        // Se non esiste ancora su Neon, genera scheda vuota (o ryoujin di default se slug ryoujin)
        const empty = this.generateTemplateFor(this.characterSlug);

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
    if (this.isRyoujin()) {
      if (!rec.data.character.skills || rec.data.character.skills.length === 0) {
        rec.data.character.skills = [...DEFAULT_RYOUJIN_SKILLS];
      }
      if (!rec.data.companion) {
        rec.data.companion = JSON.parse(JSON.stringify(DEFAULT_HISUI_COMPANION));
      } else if (!rec.data.companion.skills || rec.data.companion.skills.length === 0) {
        rec.data.companion.skills = [...DEFAULT_HISUI_SKILLS];
      }
    } else {
      if (!rec.data.character.weapons) rec.data.character.weapons = [];
      if (!rec.data.character.feats) rec.data.character.feats = [];
      if (!rec.data.character.skills) rec.data.character.skills = [];
    }

    this.charRecord.set(rec);
    this.editLevel.set(rec.level);
    this.editName = rec.name;
    this.editClass = rec.class_name;
    this.editData = JSON.parse(JSON.stringify(rec.data));
  }

  private generateTemplateFor(slug: string): { name: string; class_name: string; level: number; data: CharacterSheetData } {
    if (slug === 'ryoujin') {
      return {
        name: 'Ryoujin',
        class_name: 'Samurai (Ordine del Ronin)',
        level: 7,
        data: {
          character: {
            race: 'Tiefling (Oni-Spawn)',
            alignment: 'Caotico Buono',
            quote: '«Nessun signore a cui piegare il capo, nessun passo indietro di fronte alla lama.»',
            hp_max: 71,
            hp_current: 71,
            ac_total: 21,
            ac_touch: 12,
            ac_flat_footed: 19,
            initiative: 2,
            speed_meters: 9,
            speed_squares: 6,
            bab: 7,
            fortitude: 11,
            reflex: 6,
            will: 6,
            str: 22,
            dex: 15,
            con: 16,
            int: 15,
            wis: 12,
            cha: 13,
            resolve_max: 3,
            resolve_current: 3,
            challenge_max: 3,
            challenge_current: 3,
            skills: [...DEFAULT_RYOUJIN_SKILLS]
          },
          companion: JSON.parse(JSON.stringify(DEFAULT_HISUI_COMPANION))
        }
      };
    }

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
          skills: []
        }
      }
    };
  }

  // --- MODIFICHE PUNTI FERITA ONLINE (SALVA SUBITO SU NEON) ---
  modifyHp(target: 'main' | 'companion', amount: number): void {
    const rec = this.charRecord();
    if (!rec) return;

    if (target === 'main') {
      const cur = rec.data.character.hp_current;
      const max = rec.data.character.hp_max;
      rec.data.character.hp_current = Math.max(0, Math.min(max, cur + amount));
      this.voiceAnnouncement.set(`Punti ferita ${rec.name}: ${rec.data.character.hp_current} su ${max}`);
    } else if (rec.data.companion) {
      const cur = rec.data.companion.hp_current;
      const max = rec.data.companion.hp_max;
      rec.data.companion.hp_current = Math.max(0, Math.min(max, cur + amount));
      this.voiceAnnouncement.set(`Punti ferita ${rec.data.companion.name}: ${rec.data.companion.hp_current} su ${max}`);
    }

    this.charRecord.set({ ...rec });
    this.charService.saveCharacter(this.characterSlug, rec.level, rec.data).subscribe();
  }

  toggleResolve(index: number): void {
    const rec = this.charRecord();
    if (!rec) return;
    const cur = rec.data.character.resolve_current ?? this.maxResolve;
    rec.data.character.resolve_current = cur > index ? index : index + 1;
    rec.data.character.resolve_max = this.maxResolve;
    this.charRecord.set({ ...rec });
    this.voiceAnnouncement.set(`Fermezza: ${rec.data.character.resolve_current} su ${this.maxResolve}`);
    this.charService.saveCharacter(this.characterSlug, rec.level, rec.data).subscribe();
  }

  toggleChallenge(index: number): void {
    const rec = this.charRecord();
    if (!rec) return;
    const cur = rec.data.character.challenge_current ?? this.maxChallenge;
    rec.data.character.challenge_current = cur > index ? index : index + 1;
    rec.data.character.challenge_max = this.maxChallenge;
    this.charRecord.set({ ...rec });
    this.voiceAnnouncement.set(`Sfide del Ronin: ${rec.data.character.challenge_current} su ${this.maxChallenge}`);
    this.charService.saveCharacter(this.characterSlug, rec.level, rec.data).subscribe();
  }

  // --- COSTRUTTORE FORMULA E ROLLER DINAMICO RYOUJIN & HISUI ---
  getRollFormula(actionType: 'atk' | 'dmg' | 'save' | 'skill', diceStr: string, baseMod: number, isElemental = false, critBonus = 0): string {
    let parts = `${diceStr}${baseMod >= 0 ? '+' + baseMod : baseMod}`;
    if (critBonus > 0) parts += `+${critBonus}`;

    const extraParts: string[] = [];
    if (this.modBanner() && actionType === 'atk') extraParts.push('+1');
    if (this.modChallenge() && actionType === 'dmg' && !isElemental) extraParts.push(`+${this.ryoujinLevel}`);
    if (this.modInspire() && (actionType === 'atk' || (actionType === 'dmg' && !isElemental))) extraParts.push('+2');
    if (this.modDivineFavor() && (actionType === 'atk' || (actionType === 'dmg' && !isElemental))) extraParts.push('+2');
    if (this.modFlank() && actionType === 'atk') extraParts.push('+2');
    if (this.modPrayer() && (actionType === 'atk' || (actionType === 'dmg' && !isElemental) || actionType === 'save' || actionType === 'skill')) {
      extraParts.push('+1');
    }

    if (extraParts.length > 0) return `${parts} ${extraParts.join(' ')}`;
    return parts;
  }

  rollDynamicAction(
    name: string,
    diceCount: number,
    diceFaces: number,
    baseMod: number,
    type: 'atk' | 'dmg' | 'save' | 'skill',
    critMin = 20,
    isElemental = false,
    critBonus = 0
  ): void {
    const isAtk = type === 'atk';
    const isDmg = type === 'dmg';
    const isSave = type === 'save';
    const isSkill = type === 'skill';

    let extraMod = 0;
    const bonusParts: string[] = [];

    if (critBonus > 0) {
      extraMod += critBonus;
      bonusParts.push(`+${critBonus} Maestria`);
    }
    if (this.modBanner() && isAtk) {
      extraMod += 1;
      bonusParts.push('+1 Stendardo');
    }
    if (this.modChallenge() && isDmg && !isElemental) {
      const challBonus = this.ryoujinLevel;
      extraMod += challBonus;
      bonusParts.push(`+${challBonus} Sfida`);
    }
    if (this.modInspire() && (isAtk || (isDmg && !isElemental))) {
      extraMod += 2;
      bonusParts.push('+2 Ispirare');
    }
    if (this.modDivineFavor() && (isAtk || (isDmg && !isElemental))) {
      extraMod += 2;
      bonusParts.push('+2 Favore');
    }
    if (this.modFlank() && isAtk) {
      extraMod += 2;
      bonusParts.push('+2 Fiancheggio');
    }
    if (this.modPrayer() && (isAtk || (isDmg && !isElemental) || isSave || isSkill)) {
      extraMod += 1;
      bonusParts.push('+1 Preghiera');
    }

    const rolls: number[] = [];
    let diceSum = 0;
    for (let i = 0; i < diceCount; i++) {
      const r = Math.floor(Math.random() * diceFaces) + 1;
      rolls.push(r);
      diceSum += r;
    }

    const total = diceSum + baseMod + extraMod;
    const d20 = diceFaces === 20 ? rolls[0] : 0;
    const isCrit = d20 >= critMin;
    const isFumble = d20 === 1;

    const diceStr = diceFaces === 0 ? '' : `${diceCount > 1 ? diceCount : ''}d${diceFaces}`;
    const fullFormula = this.getRollFormula(type, diceStr, baseMod, isElemental, critBonus);

    let breakdown = `Dado: [${rolls.join(', ')}] + Base: ${baseMod}`;
    if (bonusParts.length > 0) breakdown += ' ' + bonusParts.join(' ');

    this.lastResult.set({
      title: name,
      d20,
      rolls,
      formula: fullFormula,
      total,
      isCrit,
      isFumble,
      breakdown
    });

    let spokenPhrase = `${name}: dado ${rolls.join(', ')}. Totale ${total}.`;
    if (isCrit) spokenPhrase = `Minaccia di critico! ${spokenPhrase}`;
    if (isFumble) spokenPhrase = `Fallimento automatico! ${spokenPhrase}`;

    this.voiceAnnouncement.set(spokenPhrase);
    this.speakTTS(spokenPhrase);
  }

  // Tiri per schede generiche (Airyn, Nijena, ecc.)
  rollGenericAction(title: string, diceCount: number, diceFaces: number, mod: number): void {
    const rolls: number[] = [];
    let sum = 0;
    for (let i = 0; i < diceCount; i++) {
      const r = Math.floor(Math.random() * diceFaces) + 1;
      rolls.push(r);
      sum += r;
    }

    let extraMod = 0;
    if (this.modInspire()) extraMod += 2;
    if (this.modFlank()) extraMod += 2;

    const total = sum + mod + extraMod;
    const d20 = diceFaces === 20 ? rolls[0] : 0;

    this.lastResult.set({
      title,
      d20,
      rolls,
      formula: `${diceCount}d${diceFaces} + ${mod + extraMod}`,
      total,
      isCrit: d20 === 20,
      isFumble: d20 === 1,
      breakdown: `Dadi [${rolls.join(', ')}] + Mod: ${mod} ${extraMod ? '(+' + extraMod + ' buff)' : ''}`
    });

    const phrase = `${title}: risultato ${total}.`;
    this.voiceAnnouncement.set(phrase);
    this.speakTTS(phrase);
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
    this.voiceAnnouncement.set(`Dado da ${faces}: risultato ${r}`);
    this.speakTTS(`Dado da ${faces}: risultato ${r}`);
  }

  private speakTTS(text: string): void {
    if (!this.ttsAudioEnabled()) return;
    if (typeof window !== 'undefined' && 'speechSynthesis' in window) {
      window.speechSynthesis.cancel();
      const u = new SpeechSynthesisUtterance(text);
      u.lang = 'it-IT';
      window.speechSynthesis.speak(u);
    }
  }

  // --- MODALE LEVEL UP & MODIFICA (SALVA TUTTO SU NEON) ---
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

  addCustomSkill(target: 'main' | 'companion' = 'main'): void {
    if (!this.newSkillName.trim()) return;
    const list = target === 'main' ? this.editData.character.skills : this.editData.companion?.skills;
    if (list) {
      list.push({ name: this.newSkillName.trim(), stat: this.newSkillStat, bonus: 0 });
      this.newSkillName = '';
    }
  }

  removeSkill(target: 'main' | 'companion', index: number): void {
    const list = target === 'main' ? this.editData.character.skills : this.editData.companion?.skills;
    if (list) list.splice(index, 1);
  }

  saveLevelUp(): void {
    this.saving.set(true);

    if (this.isRyoujin()) {
      const newMaxResolve = Math.max(1, Math.floor(this.editLevel() / 2));
      const newMaxChallenge = Math.max(1, Math.ceil(this.editLevel() / 3));
      this.editData.character.resolve_max = newMaxResolve;
      this.editData.character.challenge_max = newMaxChallenge;
      this.editData.character.resolve_current = Math.min(this.editData.character.resolve_current ?? newMaxResolve, newMaxResolve);
      this.editData.character.challenge_current = Math.min(this.editData.character.challenge_current ?? newMaxChallenge, newMaxChallenge);
    }

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