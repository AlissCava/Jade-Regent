export interface WildShape {
  id: number;
  name: string;
  golarion_url: string;
  bs_level: number;
  size: 'Minuscola' | 'Piccola' | 'Media' | 'Grande' | string;
  has_grab: boolean;
  has_pounce: boolean;
  has_scent: boolean;
  has_trip: boolean;
  darkvision: boolean;
  low_light_vision: boolean;
  swim_speed: string | null;
  climb_speed: string | null;
  fly_speed: string | null;
  fly_maneuverability: string | null;
  rating_color?: string;
}