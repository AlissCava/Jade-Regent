export type CombatantType = 'pc' | 'npc' | 'enemy';

export interface Combatant {
  id: string;
  name: string;
  type: CombatantType;
  initiative: number;
  damageTaken?: number; // Solo per nemici: cumulatore danni subiti
  status?: string;      // es: "Illeso", "Grave", "KO"
  conditions?: string[];
  notes?: string;
}

export interface CombatEncounter {
  id: number;
  title: string;
  current_round: number;
  active_turn_index: number;
  is_active: boolean;
  combatants: Combatant[];
  updated_at?: string;
}