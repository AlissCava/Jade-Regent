import { Component, OnInit, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterOutlet, RouterLink, RouterLinkActive } from '@angular/router';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [CommonModule, RouterOutlet, RouterLink, RouterLinkActive],
  templateUrl: './app.html',
  styleUrl: './app.scss'
})
export class App implements OnInit {
  isMenuOpen = signal<boolean>(false);
  textScale = signal<number>(100);

  // Livelli sicuri che ingrandiscono i testi senza spezzare griglie o pulsanti
  readonly availableScales: number[] = [100, 120, 140];

  ngOnInit(): void {
    if (typeof window !== 'undefined') {
      const saved = localStorage.getItem('jr_text_scale');
      if (saved && ['100', '120', '140'].includes(saved)) {
        this.applyScale(Number(saved));
      } else {
        this.applyScale(100);
      }
    }
  }

  toggleMenu(): void {
    this.isMenuOpen.update(open => !open);
  }

  closeMenu(): void {
    this.isMenuOpen.set(false);
  }

  // Cicla a ogni tocco: 100% -> 120% -> 140% -> 100%
  cycleTextScale(): void {
    const currentIndex = this.availableScales.indexOf(this.textScale());
    const nextIndex = (currentIndex + 1) % this.availableScales.length;
    this.applyScale(this.availableScales[nextIndex]);
  }

  private applyScale(scale: number): void {
    this.textScale.set(scale);
    if (typeof window !== 'undefined') {
      localStorage.setItem('jr_text_scale', scale.toString());
      document.documentElement.setAttribute('data-text-scale', scale.toString());
    }
  }
}

export { App as AppComponent };