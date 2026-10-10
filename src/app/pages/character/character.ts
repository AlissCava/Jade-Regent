import { Component, signal, computed } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-character',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './character.html',
  styleUrl: './character.scss'
})
export class CharacterComponent {
  // Switch Scheda Principale / Sottoscheda Hisui
  activeTab = signal<'ryoujin' | 'hisui'>('ryoujin');

  // --- STATO RYOUJIN ---
  maxHpRyoujin = 91;
  currentHpRyoujin = signal<number>(91);
  resolveUses = signal<number>(3); // Fermezza (3/giorno)
  challengeUses = signal<number>(3); // Sfida (3/giorno)
  alterSelfUsed = signal<boolean>(false); // Alterare se stesso (1/giorno)
  divineFavorUsed = signal<boolean>(false); // Favore Divino (1/giorno)

  // Buff Tattici Ryoujin (Modificatori di circostanza)
  inspireCourage = signal<boolean>(false); // +2 TxC, +2 Danni (Bardo)
  bannerActive = signal<boolean>(false);   // +1 TxC (Stendardo)
  challengeActive = signal<boolean>(false);// +2 TxC, +7 Danni (Sfida Ronin Lv 5)
  flanking = signal<boolean>(false);       // +2 TxC (Fiancheggiamento)
  divineFavorActive = signal<boolean>(false); // +2 TxC, +2 Danni (Favore Divino)
  powerAttack = signal<boolean>(false);    // Attacco Poderoso (-2 TxC, +6 Danni a due mani)

  // Calcolo Bonus Attacco Dinamico Ryoujin
  attackModifier = computed(() => {
    let mod = 0;
    if (this.inspireCourage()) mod += 2;
    if (this.bannerActive()) mod += 1;
    if (this.challengeActive()) mod += 2;
    if (this.flanking()) mod += 2;
    if (this.divineFavorActive()) mod += 2;
    if (this.powerAttack()) mod -= 2;
    return mod;
  });

  // Calcolo Bonus Danno Dinamico Ryoujin
  damageModifier = computed(() => {
    let mod = 0;
    if (this.inspireCourage()) mod += 2;
    if (this.challengeActive()) mod += 7;
    if (this.divineFavorActive()) mod += 2;
    if (this.powerAttack()) mod += 6; // a due mani con Katana
    return mod;
  });

  // --- STATO HISUI ---
  maxHpHisui = 79;
  currentHpHisui = signal<number>(79);
  powerAttackHisui = signal<boolean>(false); // -2 TxC, +6 Danni

  attackModifierHisui = computed(() => {
    let mod = 0;
    if (this.inspireCourage()) mod += 2;
    if (this.bannerActive()) mod += 1;
    if (this.flanking()) mod += 2;
    if (this.powerAttackHisui()) mod -= 2;
    return mod;
  });

  damageModifierHisui = computed(() => {
    let mod = 0;
    if (this.inspireCourage()) mod += 2;
    if (this.powerAttackHisui()) mod += 6;
    return mod;
  });

  // Metodi Gestione HP
  modifyHp(char: 'ryoujin' | 'hisui', amount: number): void {
    if (char === 'ryoujin') {
      const next = Math.max(0, Math.min(this.maxHpRyoujin, this.currentHpRyoujin() + amount));
      this.currentHpRyoujin.set(next);
    } else {
      const next = Math.max(0, Math.min(this.maxHpHisui, this.currentHpHisui() + amount));
      this.currentHpHisui.set(next);
    }
  }

  // Toggle utilizzi
  toggleResolve(index: number): void {
    this.resolveUses.update(val => val > index ? index : index + 1);
  }

  toggleChallenge(index: number): void {
    this.challengeUses.update(val => val > index ? index : index + 1);
  }
}