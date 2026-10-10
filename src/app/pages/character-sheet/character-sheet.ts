import { Component, OnInit, inject, signal, computed } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { CharacterService } from '../../services/character.service';
import { CharacterRecord, CharacterSheetData, SkillItem } from '../../models/character.model';

export interface DiceAction {
  name: string;
  sub: string;
  diceCount: number;
  diceFaces: number;
  baseMod: number;
  type: 'atk' | 'dmg' | 'save' | 'skill';
  critMin?: number;
  isElemental?: boolean; // Se true, esclude Sfida e bonus fisici
}

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

  characterSlug = 'ryoujin';
  loading = signal<boolean>(true);
  saving = signal<boolean>(false);
  saveSuccess = signal<boolean>(false);

  charRecord = signal<CharacterRecord | null>(null);
  activeTab = signal<'main' | 'companion' | 'roller'>('roller');

  // --- STATO LANCIATORE DADI ---
  rollerChar = signal<'ryoujin' | 'hisui'>('ryoujin');
  rollerSection = signal<'combat' | 'damage' | 'saves' | 'skills'>('combat');

  // Modificatori di Lancio Checkbox
  modInspire = signal<boolean>(false);     // +2 TxC / +2 Danni
  modDivineFavor = signal<boolean>(false); // +2 TxC / +2 Danni
  modPrayer = signal<boolean>(false);      // +1 TxC / +1 Danni / +1 TS
  modChallenge = signal<boolean>(false);   // +Livello Danni (esclusa su fiammeggiante)
  modFlank = signal<boolean>(false);       // +2 TxC
  modBanner = signal<boolean>(false);      // +1 TxC

  lastResult = signal<RollResult | null>(null);

  // Modale Level Up
  showLevelUpModal = signal<boolean>(false);
  modalTab = signal<'general' | 'stats' | 'skills' | 'companion'>('general');
  editLevel = signal<number>(7);
  editData!: CharacterSheetData;
  newSkillName = '';
  newSkillStat = 'DES';

  // Buff Tattici Scheda
  inspireCourage = signal<boolean>(false);
  bannerActive = signal<boolean>(false);
  challengeActive = signal<boolean>(false);
  flanking = signal<boolean>(false);
  divineFavorActive = signal<boolean>(false);
  powerAttack = signal<boolean>(false);
  powerAttackHisui = signal<boolean>(false);

  // ==================== CALCOLI DINAMICI STATISTICHE ====================
  get ryoujinLevel(): number {
    return this.charRecord()?.level ?? 7;
  }
  get ryoujinBab(): number {
    return this.charRecord()?.data.character.bab ?? 7;
  }
  get ryoujinStrMod(): number {
    const str = this.charRecord()?.data.character.str ?? 22;
    return Math.floor((str - 10) / 2);
  }
  get ryoujinDexMod(): number {
    const dex = this.charRecord()?.data.character.dex ?? 15;
    return Math.floor((dex - 10) / 2);
  }

  // Progressione Attacco Poderoso (-2 al 7°, scala con il BAB)
  get powerAtkPenalty(): number {
    return 1 + Math.floor(this.ryoujinBab / 4);
  }
  get powerAtkDmgTwoHand(): number {
    return this.powerAtkPenalty * 3;
  }

  // TxC Ryoujin dinamici
  get katana1TxC(): number {
    return this.ryoujinBab + this.ryoujinStrMod + 1; // 7 + 6 + 1 = 14
  }
  get katana1CritTxC(): number {
    return this.katana1TxC + 2; // +2 Weapon Expertise
  }
  get katana2TxC(): number {
    return Math.max(0, this.ryoujinBab - 5) + this.ryoujinStrMod + 1 - this.powerAtkPenalty; // 2 + 6 + 1 - 2 = 7
  }
  get katana2CritTxC(): number {
    return this.katana2TxC + 2;
  }
  get suishen1TxC(): number {
    return this.ryoujinBab + this.ryoujinStrMod + 2; // 7 + 6 + 2 = 15
  }
  get suishen1CritTxC(): number {
    return this.suishen1TxC + 2;
  }
  get suishen2TxC(): number {
    return Math.max(0, this.ryoujinBab - 5) + this.ryoujinStrMod + 2 - this.powerAtkPenalty; // 2 + 6 + 2 - 2 = 8
  }
  get suishen2CritTxC(): number {
    return this.suishen2TxC + 2;
  }
  get bow1TxC(): number {
    return this.ryoujinBab + this.ryoujinDexMod + 1; // 7 + 2 + 1 = 10
  }
  get bow2TxC(): number {
    return Math.max(0, this.ryoujinBab - 5) + this.ryoujinDexMod + 1; // 2 + 2 + 1 = 5
  }
  get bmcTxC(): number {
    return this.ryoujinBab + this.ryoujinStrMod + 1; // 7 + 6 + 1 = 14
  }

  // Danni Ryoujin dinamici
  get katanaPodDmg(): number {
    return Math.floor(this.ryoujinStrMod * 1.5) + 1 + this.powerAtkDmgTwoHand; // 9 + 1 + 6 = 16
  }
  get suishenDmg(): number {
    return Math.floor(this.ryoujinStrMod * 1.5) + 2 + this.powerAtkDmgTwoHand; // 9 + 2 + 6 = 17
  }
  get bowDmg(): number {
    return Math.min(this.ryoujinStrMod, 2) + 1; // 2 + 1 = 3
  }

  // Statistiche Hisui dinamiche
  get hisuiStrMod(): number {
    const str = this.charRecord()?.data.companion?.str ?? 25;
    return Math.floor((str - 10) / 2); // 7
  }
  get hisuiBiteTxC(): number {
    return this.charRecord()?.data.companion?.attack_bonus ?? 11;
  }
  get hisuiBitePodTxC(): number {
    return this.hisuiBiteTxC - 2;
  }
  get hisuiTripCmb(): number {
    return this.charRecord()?.data.companion?.trip_cmb ?? 11;
  }
  get hisuiBitePodDmg(): number {
    return Math.floor(this.hisuiStrMod * 1.5) + 6; // 10 + 6 = 16
  }
  get hisuiBiteBaseDmg(): number {
    return Math.floor(this.hisuiStrMod * 1.5); // 10
  }

  // Modificatori Tattici della scheda visiva
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
    const lvl = this.charRecord()?.level || 7;
    if (this.inspireCourage()) mod += 2;
    if (this.challengeActive()) mod += lvl;
    if (this.divineFavorActive()) mod += 2;
    if (this.powerAttack()) mod += 6;
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
    if (paramSlug) this.characterSlug = paramSlug;
    this.loadCharacter();
  }

  loadCharacter(): void {
    this.loading.set(true);
    this.charService.getCharacter(this.characterSlug).subscribe({
      next: (rec) => {
        if (!rec.data.character.skills || rec.data.character.skills.length === 0) {
          rec.data.character.skills = [...DEFAULT_RYOUJIN_SKILLS];
        }
        if (rec.data.companion && (!rec.data.companion.skills || rec.data.companion.skills.length === 0)) {
          rec.data.companion.skills = [...DEFAULT_HISUI_SKILLS];
        }

        this.charRecord.set(rec);
        this.editLevel.set(rec.level);
        this.editData = JSON.parse(JSON.stringify(rec.data));
        this.loading.set(false);
      },
      error: () => this.loading.set(false)
    });
  }

  // MOTORE DI LANCIO
  rollAction(action: DiceAction): void {
    const isAtk = action.type === 'atk';
    const isDmg = action.type === 'dmg';
    const isSave = action.type === 'save';

    let extraMod = 0;
    const bonusParts: string[] = [];

    // Sfida: si applica ai danni fisici, MAI sui fiammeggianti
    if (this.modChallenge() && isDmg) {
      if (!action.isElemental) {
        const challBonus = this.charRecord()?.level || 7;
        extraMod += challBonus;
        bonusParts.push(`+${challBonus} Sfida`);
      }
    }

    if (this.modInspire()) {
      if (isAtk || (isDmg && !action.isElemental)) {
        extraMod += 2;
        bonusParts.push('+2 Ispirare');
      }
    }

    if (this.modDivineFavor()) {
      if (isAtk || (isDmg && !action.isElemental)) {
        extraMod += 2;
        bonusParts.push('+2 Favore');
      }
    }

    if (this.modPrayer()) {
      if (isAtk || (isDmg && !action.isElemental) || isSave) {
        extraMod += 1;
        bonusParts.push('+1 Preghiera');
      }
    }

    if (this.modFlank() && isAtk) {
      extraMod += 2;
      bonusParts.push('+2 Fiancheggio');
    }

    if (this.modBanner() && isAtk) {
      extraMod += 1;
      bonusParts.push('+1 Stendardo');
    }

    const rolls: number[] = [];
    let diceSum = 0;

    for (let i = 0; i < action.diceCount; i++) {
      const r = Math.floor(Math.random() * action.diceFaces) + 1;
      rolls.push(r);
      diceSum += r;
    }

    const total = diceSum + action.baseMod + extraMod;
    const d20 = action.diceFaces === 20 ? rolls[0] : 0;
    const isCrit = d20 >= (action.critMin || 20);
    const isFumble = d20 === 1;

    let breakdown = `Dado: [${rolls.join(', ')}] + Base: ${action.baseMod}`;
    if (bonusParts.length > 0) {
      breakdown += ' ' + bonusParts.join(' ');
    }

    this.lastResult.set({
      title: action.name,
      d20,
      rolls,
      formula: action.sub,
      total,
      isCrit,
      isFumble,
      breakdown
    });
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

  modifyHp(target: 'main' | 'companion', amount: number): void {
    const rec = this.charRecord();
    if (!rec) return;

    if (target === 'main') {
      const cur = rec.data.character.hp_current;
      const max = rec.data.character.hp_max;
      rec.data.character.hp_current = Math.max(0, Math.min(max, cur + amount));
    } else if (rec.data.companion) {
      const cur = rec.data.companion.hp_current;
      const max = rec.data.companion.hp_max;
      rec.data.companion.hp_current = Math.max(0, Math.min(max, cur + amount));
    }

    this.charRecord.set({ ...rec });
    this.charService.saveCharacter(this.characterSlug, rec.level, rec.data).subscribe();
  }

  toggleResolve(index: number): void {
    const rec = this.charRecord();
    if (!rec) return;
    const cur = rec.data.character.resolve_current;
    rec.data.character.resolve_current = cur > index ? index : index + 1;
    this.charRecord.set({ ...rec });
    this.charService.saveCharacter(this.characterSlug, rec.level, rec.data).subscribe();
  }

  toggleChallenge(index: number): void {
    const rec = this.charRecord();
    if (!rec) return;
    const cur = rec.data.character.challenge_current;
    rec.data.character.challenge_current = cur > index ? index : index + 1;
    this.charRecord.set({ ...rec });
    this.charService.saveCharacter(this.characterSlug, rec.level, rec.data).subscribe();
  }

  openLevelUp(): void {
    const rec = this.charRecord();
    if (!rec) return;
    this.editLevel.set(rec.level);
    this.editData = JSON.parse(JSON.stringify(rec.data));
    this.modalTab.set('general');
    this.showLevelUpModal.set(true);
  }

  adjustSkill(skill: SkillItem, delta: number): void { skill.bonus += delta; }
  addCustomSkill(target: 'main' | 'companion'): void {
    if (!this.newSkillName.trim()) return;
    const list = target === 'main' ? this.editData.character.skills : this.editData.companion?.skills;
    if (list) {
      list.push({ name: this.newSkillName.trim(), stat: this.newSkillStat, bonus: 1 });
      this.newSkillName = '';
    }
  }
  removeSkill(target: 'main' | 'companion', index: number): void {
    const list = target === 'main' ? this.editData.character.skills : this.editData.companion?.skills;
    if (list) list.splice(index, 1);
  }

  saveLevelUp(): void {
    this.saving.set(true);
    this.charService.saveCharacter(this.characterSlug, this.editLevel(), this.editData).subscribe({
      next: (res) => {
        this.charRecord.set(res.character);
        this.saving.set(false);
        this.saveSuccess.set(true);
        setTimeout(() => {
          this.saveSuccess.set(false);
          this.showLevelUpModal.set(false);
        }, 600);
      },
      error: () => this.saving.set(false)
    });
  }
}