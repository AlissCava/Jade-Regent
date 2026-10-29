import { Component, OnInit, inject, signal, computed } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { RouterLink } from '@angular/router';
import { InventoryService } from '../../services/inventory.service';
import { InventoryItem, Treasury } from '../../models/inventory.model';

export interface CategoryGroup {
  key: string;
  name: string;
  icon: string;
  order: number;
  items: InventoryItem[];
}

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

  // Gestione sezioni compresse
  collapsedCategories = signal<Set<string>>(new Set());

  // Form Nuovo Oggetto
  showAddForm = signal<boolean>(false);
  newItem: Partial<InventoryItem> = {
    name: '',
    category: 'Arma',
    quantity: 1,
    value_gp: 0,
    assigned_to: 'Carovana',
    description: '',
    is_identified: true
  };

  // Modale Modifica Oggetto Esistente
  editingItem = signal<InventoryItem | null>(null);
  isSavingEdit = signal<boolean>(false);

  owners = ['Tutti', 'Carovana', 'Ryoujin', 'Airyn', 'Azoi', 'Kaede', 'Nijena', 'Ameiko', 'Sandru'];

  categoryOptions = [
    { value: 'Arma', label: 'Armi e Scudi' },
    { value: 'Armatura', label: 'Armature e Vestiti' },
    { value: 'Pergamena', label: 'Pergamene' },
    { value: 'Merci', label: 'Lettere e Libri' },
    { value: 'Pozione', label: 'Pozioni e Veleni' },
    { value: 'Oggetto Magico', label: 'Bacchette e Oggetti Magici' },
    { value: 'Equipaggiamento', label: 'Altro ed Equipaggiamento' },
    { value: 'Preziosi', label: 'Preziosi e Gemme' }
  ];

  // Calcolo Totale Equivalente in MO
  totalGpEquivalent = computed(() => {
    const t = this.treasury();
    return (t.platinum * 10) + t.gold + (t.silver / 10) + (t.copper / 100);
  });

  // Lista Filtrata
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

  // Raggruppamento per Categoria
  categoryGroups = computed(() => {
    const items = this.filteredItems();
    const groupsMap = new Map<string, InventoryItem[]>();

    for (const item of items) {
      const cat = item.category || 'Equipaggiamento';
      if (!groupsMap.has(cat)) {
        groupsMap.set(cat, []);
      }
      groupsMap.get(cat)!.push(item);
    }

    const orderMeta: { [key: string]: { name: string; icon: string; order: number } } = {
      'Arma': { name: 'Armi e Scudi', icon: '⚔️', order: 1 },
      'Armatura': { name: 'Armature e Vestiti', icon: '🛡️', order: 2 },
      'Pergamena': { name: 'Pergamene', icon: '📜', order: 3 },
      'Merci': { name: 'Lettere e Libri', icon: '📖', order: 4 },
      'Pozione': { name: 'Pozioni e Veleni', icon: '🧪', order: 5 },
      'Oggetto Magico': { name: 'Bacchette e Oggetti Magici', icon: '🪄', order: 6 },
      'Equipaggiamento': { name: 'Altro ed Equipaggiamento', icon: '🎒', order: 7 },
      'Preziosi': { name: 'Preziosi e Gemme', icon: '💎', order: 8 }
    };

    const result: CategoryGroup[] = Array.from(groupsMap.entries()).map(([key, groupItems]) => {
      const meta = orderMeta[key] || { name: key, icon: '📦', order: 99 };
      return {
        key,
        name: meta.name,
        icon: meta.icon,
        order: meta.order,
        items: groupItems
      };
    });

    return result.sort((a, b) => a.order - b.order);
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

  toggleCategory(key: string): void {
    this.collapsedCategories.update(set => {
      const next = new Set(set);
      if (next.has(key)) next.delete(key);
      else next.add(key);
      return next;
    });
  }

  isCollapsed(key: string): boolean {
    return this.collapsedCategories().has(key);
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
      category: 'Arma',
      quantity: 1,
      value_gp: 0,
      assigned_to: 'Carovana',
      description: '',
      is_identified: true
    };
    this.showAddForm.set(false);
  }

  // --- MODIFICA OGGETTO ESISTENTE ---
  openEditModal(item: InventoryItem, event?: Event): void {
    if (event) {
      event.preventDefault();
      event.stopPropagation();
    }
    // Crea una copia indipendente per non modificare la lista finché non si preme Salva
    this.editingItem.set({ ...item });
  }

  closeEditModal(): void {
    this.editingItem.set(null);
  }

  async saveEditedItem(): Promise<void> {
    const current = this.editingItem();
    if (!current || !current.name.trim()) return;

    this.isSavingEdit.set(true);
    try {
      const updated = await this.invService.updateItem(current);
      this.items.update(list => list.map(i => (i.id === updated.id ? updated : i)));
      this.editingItem.set(null);
    } finally {
      this.isSavingEdit.set(false);
    }
  }

  // --- CAMBIO RAPIDO QUANTITÀ (+ / -) ---
  async changeQuantity(item: InventoryItem, delta: number, event: Event): Promise<void> {
    event.preventDefault();
    event.stopPropagation();

    const newQty = (item.quantity || 1) + delta;
    if (newQty <= 0) {
      await this.deleteItem(item.id, event);
      return;
    }

    const updatedItem: InventoryItem = { ...item, quantity: newQty };
    const saved = await this.invService.updateItem(updatedItem);
    this.items.update(list => list.map(i => (i.id === saved.id ? saved : i)));
  }

  async deleteItem(id: number, event?: Event): Promise<void> {
    if (event) {
      event.preventDefault();
      event.stopPropagation();
    }
    if (!confirm('Rimuovere questo oggetto dall\'inventario?')) return;
    await this.invService.deleteItem(id);
    this.items.update(list => list.filter(i => i.id !== id));
    if (this.editingItem()?.id === id) {
      this.editingItem.set(null);
    }
  }
}