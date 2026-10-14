export interface InventoryItem {
  id: number;
  name: string;
  category: string;
  quantity: number;
  value_gp: number;
  assigned_to: string;
  description: string;
  is_identified: boolean;
}

export interface Treasury {
  id: number;
  platinum: number;
  gold: number;
  silver: number;
  copper: number;
}