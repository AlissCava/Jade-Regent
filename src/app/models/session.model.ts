export interface SessionRecord {
  id: number;
  session_number: number;
  session_date: string; // Formato YYYY-MM-DD
  title: string;
  summary: string;
  combat?: string;
  loot?: string;
  npcs?: string;
  quotes?: string;
  audio_duration?: string;
  created_at?: string;
  updated_at?: string;
}