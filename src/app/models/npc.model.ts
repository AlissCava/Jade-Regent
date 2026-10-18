export interface NpcRecord {
  id: number;
  slug: string;
  first_name: string;
  last_name?: string | null;
  alter_ego?: string | null;
  location: string;
  category: 'NPC' | 'Luogo' | 'Divinità';
  description: string;
  image_url?: string | null;
  status: 'alive' | 'dead' | 'ally' | 'enemy' | 'prisoner' | 'cultist';
  notes?: string | null;
  combat_stats?: Record<string, any>;
  updated_at?: string;
}
