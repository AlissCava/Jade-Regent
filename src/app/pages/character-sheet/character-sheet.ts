import { Component, OnInit, inject, signal, computed } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { CharacterService } from '../../services/character.service';
import { CharacterRecord, CharacterSheetData } from '../../models/character.model';

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
  activeTab = signal<'main' | 'companion'>('main');

  showLevelUpModal = signal<boolean>(false);
  editLevel = signal<number>(7);
  editData!: CharacterSheetData;

  // Buff Tattici Ryoujin
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
    if (paramSlug) {
      this.characterSlug = paramSlug;
    }
    this.loadCharacter();
  }

  loadCharacter(): void {
    this.loading.set(true);
    this.charService.getCharacter(this.characterSlug).subscribe({
      next: (rec) => {
        this.charRecord.set(rec);
        this.editLevel.set(rec.level);
        this.editData = JSON.parse(JSON.stringify(rec.data));
        this.loading.set(false);
      },
      error: () => this.loading.set(false)
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
    this.showLevelUpModal.set(true);
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
        }, 800);
      },
      error: () => this.saving.set(false)
    });
  }
}