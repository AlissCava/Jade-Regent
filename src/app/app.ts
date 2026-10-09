import { Component, OnInit, inject, signal, computed } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { WildShapeService } from './services/wild-shape.service';
import { WildShape } from './models/wild-shape.model';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './app.html',
  styleUrl: './app.scss'
})
export class App implements OnInit {
  private shapeService = inject(WildShapeService);

  // Dati e stato di caricamento
  shapes = signal<WildShape[]>([]);
  loading = signal<boolean>(true);

  // Filtri reattivi
  searchTerm = signal<string>('');
  selectedSize = signal<string>('Tutte');
  selectedBsLevel = signal<string>('Tutti');
  onlyPounce = signal<boolean>(false);
  onlyFly = signal<boolean>(false);
  onlySwim = signal<boolean>(false);

  // Calcolo lista filtrata client-side
  filteredShapes = computed(() => {
    return this.shapes().filter((s) => {
      const matchName = s.name.toLowerCase().includes(this.searchTerm().toLowerCase());
      const matchSize = this.selectedSize() === 'Tutte' || s.size === this.selectedSize();
      const matchLevel = this.selectedBsLevel() === 'Tutti' || s.bs_level === Number(this.selectedBsLevel());
      const matchPounce = !this.onlyPounce() || s.has_pounce;
      const matchFly = !this.onlyFly() || (s.fly_speed !== null && s.fly_speed !== 'No');
      const matchSwim = !this.onlySwim() || (s.swim_speed !== null && s.swim_speed !== 'No');

      return matchName && matchSize && matchLevel && matchPounce && matchFly && matchSwim;
    });
  });

ngOnInit(): void {
    this.shapeService.getAllShapes().subscribe({
      next: (data: WildShape[]) => {
        this.shapes.set(data);
        this.loading.set(false);
      },
      error: (err: unknown) => {
        console.error('Errore durante il recupero delle forme selvatiche:', err);
        this.loading.set(false);
      }
    });
  }

// Alias per compatibilità
export { App as AppComponent };