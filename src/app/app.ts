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

  shapes = signal<WildShape[]>([]);
  loading = signal<boolean>(true);

  // Filtri
  searchTerm = signal<string>('');
  selectedSize = signal<string>('Tutte');
  selectedBsLevel = signal<string>('Tutti');
  onlyPounce = signal<boolean>(false);
  onlyFly = signal<boolean>(false);
  onlySwim = signal<boolean>(false);
  onlyClimb = signal<boolean>(false);
  onlyTrip = signal<boolean>(false);
  onlyGrab = signal<boolean>(false);

  // Verifica se ci sono filtri attivi (per mostrare il tasto reset)
  hasActiveFilters = computed(() => {
    return (
      this.searchTerm().trim().length > 0 ||
      this.selectedSize() !== 'Tutte' ||
      this.selectedBsLevel() !== 'Tutti' ||
      this.onlyPounce() ||
      this.onlyFly() ||
      this.onlySwim() ||
      this.onlyClimb() ||
      this.onlyTrip() ||
      this.onlyGrab()
    );
  });

  filteredShapes = computed(() => {
    const term = this.searchTerm().toLowerCase().trim();
    return this.shapes().filter((s) => {
      const matchName = term === '' || s.name.toLowerCase().includes(term);
      const matchSize = this.selectedSize() === 'Tutte' || s.size === this.selectedSize();
      const matchLevel = this.selectedBsLevel() === 'Tutti' || s.bs_level === Number(this.selectedBsLevel());
      const matchPounce = !this.onlyPounce() || s.has_pounce;
      const matchTrip = !this.onlyTrip() || s.has_trip;
      const matchGrab = !this.onlyGrab() || s.has_grab;
      const matchFly = !this.onlyFly() || (s.fly_speed !== null && s.fly_speed !== 'No');
      const matchSwim = !this.onlySwim() || (s.swim_speed !== null && s.swim_speed !== 'No');
      const matchClimb = !this.onlyClimb() || (s.climb_speed !== null && s.climb_speed !== 'No');

      return matchName && matchSize && matchLevel && matchPounce && matchTrip && matchGrab && matchFly && matchSwim && matchClimb;
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

  resetFilters(): void {
    this.searchTerm.set('');
    this.selectedSize.set('Tutte');
    this.selectedBsLevel.set('Tutti');
    this.onlyPounce.set(false);
    this.onlyFly.set(false);
    this.onlySwim.set(false);
    this.onlyClimb.set(false);
    this.onlyTrip.set(false);
    this.onlyGrab.set(false);
  }
}