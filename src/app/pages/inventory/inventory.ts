import { Component, OnInit, inject, signal, computed } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { RouterLink } from '@angular/router';
import { InventoryService } from '../../services/inventory.service';
import { InventoryItem, Treasury } from '../../models/inventory.model';

@Component({
  selector: 'app-inventory',
  standalone: true,
  imports: [CommonModule, FormsModule, RouterLink],
  templateUrl: './inventory.html',
  styleUrl: './inventory.scss'
})
export class InventoryComponent implements OnInit {
  private invService = inject(InventoryService);

  loading = signal<boolean>(true);
  items = signal<InventoryItem[]>([]);
  treasury = signal<Treasury>({ id: 1, platinum: 0, gold: 0, silver: 0, copper: 0 });

  // Filtri e Ricerca
  searchQuery = signal<string>('');
  selectedCategory = signal<string>('Tutti');
  selectedOwner = signal<string>('Tutti');

  // Form Nuovo Oggetto
  showAddForm = signal<boolean>(false);
  newItem: Partial<InventoryItem> = {
    name: '',
    category: 'Equipaggiamento',
    quantity: 1,
    value_gp: 0,
    assigned_to: 'Carovana',
    description: '',
    is_identified: true
  };

  owners = ['Tutti', 'Carovana', 'Ryoujin', 'Airyn', 'Azoi', 'Kaede', 'Nijena', 'Ameiko', 'Sandru'];
  categories = ['Tutti', 'Arma', 'Armatura', 'Pozione', 'Pergamena', 'Oggetto Magico', 'Preziosi', 'Merci', 'Equipaggiamento'];

  // Calcolo Totale Equivalente in Monete d'Oro
  totalGpEquivalent = computed(() => {
    const t = this.treasury();
    return (t.platinum * 10) + t.gold + (t.silver / 10) + (t.copper / 100);
  });

  // Lista Filtrata Reattiva
  filteredItems = computed(() => {
    const q = this.searchQuery().toLowerCase().trim();
    const cat = this.selectedCategory();
    const own = this.selectedOwner();

    return this.items().filter(item => {
      const matchQuery = !q || item.name.toLowerCase().includes(q) || (item.description && item.description.toLowerCase().includes(q));
      const matchCat = cat === 'Tutti' || item.category === cat;
      const matchOwner = own === 'Tutti' || item.assigned_to === own;
      return matchQuery && matchCat && matchOwner;
    });
  });

  async ngOnInit(): Promise<void> {
    await this.loadData();
  }

  async loadData(): Promise<void> {
    this.loading.set(true);
    try {
      const data = await this.invService.getData();
      this.treasury.set(data.treasury);
      this.items.set(data.items);
    } finally {
      this.loading.set(false);
    }
  }

  async saveTreasury(): Promise<void> {
    await this.invService.updateTreasury(this.treasury());
  }

  async submitItem(): Promise<void> {
    if (!this.newItem.name?.trim()) return;
    const created = await this.invService.addItem(this.newItem);
    this.items.update(list => [...list, created]);
    this.newItem = {
      name: '',
      category: 'Equipaggiamento',
      quantity: 1,
      value_gp: 0,
      assigned_to: 'Carovana',
      description: '',
      is_identified: true
    };
    this.showAddForm.set(false);
  }

  async deleteItem(id: number): Promise<void> {
    if (!confirm('Rimuovere questo oggetto dall\'inventario?')) return;
    await this.invService.deleteItem(id);
    this.items.update(list => list.filter(i => i.id !== id));
  }
}