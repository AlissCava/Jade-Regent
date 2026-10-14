import { Injectable, inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { firstValueFrom } from 'rxjs';
import { InventoryItem, Treasury } from '../models/inventory.model';

@Injectable({ providedIn: 'root' })
export class InventoryService {
  private http = inject(HttpClient);
  private apiUrl = '/api/inventory';

  async getData(): Promise<{ treasury: Treasury; items: InventoryItem[] }> {
    return firstValueFrom(this.http.get<{ treasury: Treasury; items: InventoryItem[] }>(this.apiUrl));
  }

  async addItem(item: Partial<InventoryItem>): Promise<InventoryItem> {
    return firstValueFrom(this.http.post<InventoryItem>(this.apiUrl, { item }));
  }

  async updateItem(item: InventoryItem): Promise<InventoryItem> {
    return firstValueFrom(this.http.put<InventoryItem>(this.apiUrl, item));
  }

  async deleteItem(id: number): Promise<void> {
    return firstValueFrom(this.http.delete<void>(`${this.apiUrl}?id=${id}`));
  }

  async updateTreasury(treasury: Treasury): Promise<Treasury> {
    return firstValueFrom(this.http.post<Treasury>(this.apiUrl, { action: 'update_treasury', treasury }));
  }
}