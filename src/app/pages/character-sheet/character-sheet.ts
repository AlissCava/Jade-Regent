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
  isElemental?: boolean; // Se true, esclude Sfida e modificatori fisici
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
  activeTab = signal<'main' | 'companion' | 'roller'>('roller'); // Apre direttamente il roller per comodità

  // --- STATO LANCIATORE DADI ---
  rollerChar = signal<'ryoujin' | 'hisui'>('ryoujin');
  rollerSection = signal<'combat' | 'damage' | 'saves' | 'skills'>('combat');

  // Modificatori di Lancio Checkbox
  modInspire = signal<boolean>(false);     // +2 TxC / +2 Danni
  modDivineFavor = signal<boolean>(false); // +2 TxC / +2 Danni
  modPrayer = signal<boolean>(false);      // +1 TxC / +1 Danni / +1 TS
  modChallenge = signal<boolean>(false);   // +7 Danni (non su fiammeggianti!)
  modFlank = signal<boolean>(false);       // +2 TxC
  modBanner = signal<boolean>(false);      // +1 TxC

  // Ultimo risultato tiro
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

  // --- MOTORE LANCIO DADI CON ESCLUSIONE SFIDA SU FIAMMEGGIANTE ---
  rollAction(action: DiceAction): void {
    const isAtk = action.type === 'atk';
    const isDmg = action.type === 'dmg';
    const isSave = action.type === 'save';

    let extraMod = 0;
    const bonusParts: string[] = [];

    // Sfida (+7 a Livello 7): solo se danno e NON elementale (fuoco)
    if (this.modChallenge() && isDmg) {
      if (!action.isElemental) {
        const challBonus = this.charRecord()?.level || 7;
        extraMod += challBonus;
        bonusParts.push(`+${challBonus} Sfida`);
      }
    }

    // Ispirare coraggio (+2): attacchi e danni fisici
    if (this.modInspire()) {
      if (isAtk || (isDmg && !action.isElemental)) {
        extraMod += 2;
        bonusParts.push('+2 Ispirare');
      }
    }

    // Favore divino (+2): attacchi e danni fisici
    if (this.modDivineFavor()) {
      if (isAtk || (isDmg && !action.isElemental)) {
        extraMod += 2;
        bonusParts.push('+2 Favore');
      }
    }

    // Preghiera (+1): attacchi, danni fisici e tiri salvezza
    if (this.modPrayer()) {
      if (isAtk || (isDmg && !action.isElemental) || isSave) {
        extraMod += 1;
        bonusParts.push('+1 Preghiera');
      }
    }

    // Fiancheggiamento (+2 TxC)
    if (this.modFlank() && isAtk) {
      extraMod += 2;
      bonusParts.push('+2 Fiancheggio');
    }

    // Stendardo (+1 TxC)
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