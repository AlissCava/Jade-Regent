export interface Spell {
  id: number;
  name: string;
  english_name?: string | null;
  druid_level: number | null;
  magus_level: number | null;
  bard_level?: number | null; // <-- Supporto incantesimi del Bardo (Nijena)
  school: string | null;
  short_description: string | null;
  full_description: string | null;
  casting_time: string | null;
  range: string | null;
  duration: string | null;
  saving_throw: string | null;
  spell_res: string | null;
  source: string | null;
  golarion_url: string | null;
}