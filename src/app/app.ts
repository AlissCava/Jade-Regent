import { Component, OnInit, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { RouterOutlet, RouterLink, RouterLinkActive } from '@angular/router';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [CommonModule, FormsModule, RouterOutlet, RouterLink, RouterLinkActive],
  templateUrl: './app.html',
  styleUrl: './app.scss'
})
export class App implements OnInit {
  // --- ACCESSO RISERVATO ---
  private readonly SECRET_KEY = 'J4deR3d3nt'; 
  isUnlocked = signal<boolean>(false);
  passcode = '';
  authError = signal<boolean>(false);

  // --- MENU DRAWER LATERALE ---
  isMenuOpen = signal<boolean>(false);

  // --- SCALA TESTO (Pulsante Aa: 100% -> 125% -> 150% -> 200%) ---
  textScale = signal<number>(100);
  availableScales: number[] = [100, 125, 150, 200];

  ngOnInit(): void {
    // 1. Verifica autorizzazione party
    if (localStorage.getItem('jade_regent_authorized') === 'true') {
      this.isUnlocked.set(true);
    }

    // 2. Ripristina scala testo salvata (o default a 100%)
    const savedScale = localStorage.getItem('jade_regent_text_scale');
    const scaleNum = savedScale ? parseInt(savedScale, 10) : 100;
    if (this.availableScales.includes(scaleNum)) {
      this.applyScale(scaleNum);
    } else {
      this.applyScale(100);
    }
  }

  unlock(): void {
    if (this.passcode.trim() === this.SECRET_KEY || this.passcode.trim().toLowerCase() === this.SECRET_KEY.toLowerCase()) {
      localStorage.setItem('jade_regent_authorized', 'true');
      this.isUnlocked.set(true);
      this.authError.set(false);
    } else {
      this.authError.set(true);
      this.passcode = '';
    }
  }

  toggleMenu(): void {
    this.isMenuOpen.update(open => !open);
  }

  closeMenu(): void {
    this.isMenuOpen.set(false);
  }

  cycleTextScale(): void {
    const currentIndex = this.availableScales.indexOf(this.textScale());
    const nextIndex = (currentIndex + 1) % this.availableScales.length;
    this.applyScale(this.availableScales[nextIndex]);
  }

  private applyScale(scale: number): void {
    this.textScale.set(scale);
    // Imposta la dimensione base in px sul root document
    document.documentElement.style.fontSize = `${(scale / 100) * 16}px`;
    // Imposta l'attributo per consentire alle pagine di riadattare il layout alle scale grandi
    document.documentElement.setAttribute('data-text-scale', scale.toString());
    localStorage.setItem('jade_regent_text_scale', scale.toString());
  }
}

export { App as AppComponent };