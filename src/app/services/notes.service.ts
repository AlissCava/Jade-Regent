import { Injectable, inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, firstValueFrom } from 'rxjs';
import { NoteItem } from '../models/note.model';

@Injectable({
  providedIn: 'root'
})
export class NotesService {
  private http = inject(HttpClient);
  private readonly API_URL = '/api/notes';
  private readonly STORAGE_KEY = 'jade_regent_private_notes';

  // --- 1. NOTE COMUNI (SERVER NEON) ---
  async getServerNotes(): Promise<NoteItem[]> {
    const data = await firstValueFrom(this.http.get<any[]>(this.API_URL));
    return data.map((n) => ({
      id: n.id,
      title: n.title,
      content: n.content,
      author: n.author,
      category: n.category,
      is_pinned: Boolean(n.is_pinned),
      is_private: false,
      updated_at: n.updated_at
    }));
  }

  async createServerNote(note: Partial<NoteItem>): Promise<NoteItem> {
    const n = await firstValueFrom(this.http.post<any>(this.API_URL, note));
    return { ...n, is_private: false };
  }

  async updateServerNote(note: NoteItem): Promise<NoteItem> {
    const n = await firstValueFrom(this.http.put<any>(this.API_URL, note));
    return { ...n, is_private: false };
  }

  async deleteServerNote(id: number | string): Promise<void> {
    await firstValueFrom(this.http.delete<void>(`${this.API_URL}?id=${id}`));
  }

  // --- 2. NOTE PRIVATE (LOCALSTORAGE) ---
  getLocalNotes(): NoteItem[] {
    if (typeof window === 'undefined') return [];
    try {
      const raw = localStorage.getItem(this.STORAGE_KEY);
      return raw ? JSON.parse(raw) : [];
    } catch {
      return [];
    }
  }

  saveLocalNotes(notes: NoteItem[]): void {
    if (typeof window === 'undefined') return;
    try {
      localStorage.setItem(this.STORAGE_KEY, JSON.stringify(notes));
    } catch (e) {
      console.warn('Errore salvataggio note locali:', e);
    }
  }

  createLocalNote(note: Partial<NoteItem>): NoteItem {
    const list = this.getLocalNotes();
    const created: NoteItem = {
      id: 'local_' + Date.now(),
      title: note.title?.trim() || 'Nota Privata',
      content: note.content?.trim() || '',
      author: note.author?.trim() || 'Io',
      category: note.category || 'Personale',
      is_private: true,
      is_pinned: Boolean(note.is_pinned),
      updated_at: new Date().toISOString()
    };
    list.unshift(created);
    this.saveLocalNotes(list);
    return created;
  }

  updateLocalNote(note: NoteItem): NoteItem {
    const list = this.getLocalNotes();
    const updated = {
      ...note,
      is_private: true,
      updated_at: new Date().toISOString()
    };
    const next = list.map((item) => (String(item.id) === String(note.id) ? updated : item));
    this.saveLocalNotes(next);
    return updated;
  }

  deleteLocalNote(id: string | number): void {
    const list = this.getLocalNotes();
    const next = list.filter((item) => String(item.id) !== String(id));
    this.saveLocalNotes(next);
  }
}