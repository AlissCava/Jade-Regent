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
  private readonly SECRET_KEY = 'J4deR3g3nt!'; 
  isUnlocked = signal<boolean>(false);
  passcode = '';
  authError = signal<boolean>(false);

  // --- MENU DRAWER LATERALE ---
  isMenuOpen = signal<boolean>(false);

  // --- SCALA TESTO (Pulsante Aa) ---
  textScale = signal<number>(100);
  availableScales: number[] = [100, 110, 125, 90];

  ngOnInit(): void {
    // 1. Verifica autorizzazione party
    if (localStorage.getItem('jade_regent_authorized') === 'true') {
      this.isUnlocked.set(true);
    }

    // 2. Ripristina scala testo salvata
    const savedScale = localStorage.getItem('jade_regent_text_scale');
    if (savedScale) {
      const num = parseInt(savedScale, 10);
      if (this.availableScales.includes(num)) {
        this.applyScale(num);
      }
    }
  }

  unlock(): void {
    if (this.passcode.trim().toLowerCase() === this.SECRET_KEY.toLowerCase()) {
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
    document.documentElement.style.fontSize = `${(scale / 100) * 16}px`;
    localStorage.setItem('jade_regent_text_scale', scale.toString());
  }
}

// Esportazione alias per compatibilità con il bootstrap di Angular
export { App as AppComponent };