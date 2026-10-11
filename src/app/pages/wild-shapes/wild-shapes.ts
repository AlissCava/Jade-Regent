import { Component, OnInit, inject, signal, computed } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { WildShapeService } from '../../services/wild-shape.service';
import { WildShape } from '../../models/wild-shape.model';

@Component({
  selector: 'app-wild-shapes',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './wild-shapes.html',
  styleUrl: './wild-shapes.scss'
})
export class WildShapesComponent implements OnInit {
  private shapeService = inject(WildShapeService);

  filtersOpen = signal<boolean>(false);
  shapes = signal<WildShape[]>([]);
  loadingShapes = signal<boolean>(true);
  searchTerm = signal<string>('');
  selectedSize = signal<string>('Tutte');
  selectedBsLevel = signal<string>('Tutti');
  onlyPounce = signal<boolean>(false);
  onlyFly = signal<boolean>(false);
  onlySwim = signal<boolean>(false);
  onlyClimb = signal<boolean>(false);
  onlyTrip = signal<boolean>(false);
  onlyGrab = signal<boolean>(false);

  toggleFilters(): void {
    this.filtersOpen.update(open => !open);
  }

  hasActiveShapeFilters = computed(() => {
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
      next: (data) => {
        this.shapes.set(data);
        this.loadingShapes.set(false);
      },
      error: () => this.loadingShapes.set(false)
    });
  }

  resetShapeFilters(): void {
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