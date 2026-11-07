import { Component, OnInit, inject, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { RouterOutlet, RouterLink, RouterLinkActive, Router, NavigationEnd } from '@angular/router';
import { filter } from 'rxjs/operators';
import { A11yService } from './services/a11y.service';
import { InitiativeComponent } from './pages/initiative/initiative';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [
    CommonModule, 
    FormsModule, 
    RouterOutlet, 
    RouterLink, 
    RouterLinkActive, 
    InitiativeComponent
  ],
  templateUrl: './app.html',
  styleUrl: './app.scss'
})
export class App implements OnInit {
  private router = inject(Router);
  private a11yService = inject(A11yService);

  // --- ACCESSO RISERVATO ---
  private readonly SECRET_KEY = 'J4deR3g3nt!'; 
  isUnlocked = signal<boolean>(false);
  passcode = '';
  authError = signal<boolean>(false);

  // --- MENU DRAWER LATERALE ---
  isMenuOpen = signal<boolean>(false);

  // --- SCALA TESTO (Pulsante Aa: 100% -> 125% -> 150%) ---
  textScale = signal<number>(100);
  availableScales: number[] = [100, 125, 150];

  // --- SIDEBAR INIZIATIVA LATERALE (DESKTOP/IPAD) ---
  isInitiativePage = signal<boolean>(false);
  sidebarOpen = signal<boolean>(true);

  // --- STATO SOTTO-MENU DRAWER ---
  isPartySubmenuOpen = signal<boolean>(false);
  isSheetsSubmenuOpen = signal<boolean>(false);
  isSpellsSubmenuOpen = signal<boolean>(false);

  constructor() {
    this.router.events.pipe(
      filter((e): e is NavigationEnd => e instanceof NavigationEnd)
    ).subscribe((event: NavigationEnd) => {
      this.isInitiativePage.set(event.urlAfterRedirects.includes('/initiative'));
    });
  }

  ngOnInit(): void {
    this.a11yService.init();

    if (typeof window !== 'undefined') {
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

    // Verifica rotta iniziale
    this.isInitiativePage.set(this.router.url.includes('/initiative'));
  }

  // --- CONTROLLO SOTTOMENU ---
  togglePartySubmenu(): void {
    this.isPartySubmenuOpen.update(v => !v);
  }

  toggleSheetsSubmenu(event?: Event): void {
    if (event) event.stopPropagation();
    this.isSheetsSubmenuOpen.update(v => !v);
  }

  toggleSpellsSubmenu(): void {
    this.isSpellsSubmenuOpen.update(v => !v);
  }

  // --- CONTROLLO ACCESSO E MENU ---
  unlock(): void {
    const clean = this.passcode.trim();
    if (clean === this.SECRET_KEY || clean.toLowerCase() === this.SECRET_KEY.toLowerCase()) {
      if (typeof window !== 'undefined') {
        localStorage.setItem('jade_regent_authorized', 'true');
      }
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

  toggleSidebar(): void {
    this.sidebarOpen.update(v => !v);
  }

  // --- SCALA TIPOGRAFICA DINAMICA ---
  cycleTextScale(): void {
    const currentIndex = this.availableScales.indexOf(this.textScale());
    const nextIndex = (currentIndex + 1) % this.availableScales.length;
    this.applyScale(this.availableScales[nextIndex]);
  }

  private applyScale(scale: number): void {
    this.textScale.set(scale);
    if (typeof document !== 'undefined') {
      document.documentElement.style.fontSize = `${(scale / 100) * 16}px`;
      document.documentElement.setAttribute('data-text-scale', scale.toString());
      document.body.setAttribute('data-text-scale', scale.toString());
    }
    if (typeof window !== 'undefined') {
      localStorage.setItem('jade_regent_text_scale', scale.toString());
    }
  }
}

export { App as AppComponent };