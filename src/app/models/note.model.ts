export interface NoteItem {
  id: string | number;
  title: string;
  content: string;
  author: string;
  category: string;
  is_private: boolean; // false = Server Neon, true = LocalStorage
  is_pinned?: boolean;
  updated_at?: string;
}