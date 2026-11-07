import { Component, OnInit, inject, signal, computed } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { NotesService } from '../../services/notes.service';
import { NoteItem } from '../../models/note.model';

@Component({
  selector: 'app-notes',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './notes.html',
  styleUrl: './notes.scss'
})
export class NotesComponent implements OnInit {
  private notesService = inject(NotesService);

  loading = signal<boolean>(true);
  isSaving = signal<boolean>(false);

  // Liste
  serverNotes = signal<NoteItem[]>([]);
  localNotes = signal<NoteItem[]>([]);

  // Filtri
  searchQuery = signal<string>('');
  scopeFilter = signal<'all' | 'server' | 'private'>('all');
  selectedCategory = signal<string>('Tutti');

  readonly categories = ['Tutti', 'Trama', 'Obiettivi', 'PNG & Luoghi', 'Bottino', 'Combattimento', 'Personale', 'Generale'];
  readonly authors = ['Carovana', 'Ryoujin', 'Airyn', 'Azoi', 'Kaede', 'Nijena', 'Master'];

  // Modale Editor (per creazione o modifica)
  showEditorModal = signal<boolean>(false);
  isEditing = signal<boolean>(false);

  // Bozza nota in modifica/creazione
  noteDraft: Partial<NoteItem> = {
    title: '',
    content: '',
    author: 'Carovana',
    category: 'Generale',
    is_private: false,
    is_pinned: false
  };

  // Tutte le note unite e ordinate (prima quelle fissate in alto)
  allNotes = computed(() => {
    const merged = [...this.serverNotes(), ...this.localNotes()];
    return merged.sort((a, b) => {
      if (a.is_pinned !== b.is_pinned) {
        return (b.is_pinned ? 1 : 0) - (a.is_pinned ? 1 : 0);
      }
      const timeA = a.updated_at ? new Date(a.updated_at).getTime() : 0;
      const timeB = b.updated_at ? new Date(b.updated_at).getTime() : 0;
      return timeB - timeA;
    });
  });

  filteredNotes = computed(() => {
    const q = this.searchQuery().toLowerCase().trim();
    const scope = this.scopeFilter();
    const cat = this.selectedCategory();

    return this.allNotes().filter((n) => {
      if (scope === 'server' && n.is_private) return false;
      if (scope === 'private' && !n.is_private) return false;

      if (cat !== 'Tutti' && n.category !== cat) return false;

      if (q) {
        const full = `${n.title} ${n.content} ${n.author} ${n.category}`.toLowerCase();
        if (!full.includes(q)) return false;
      }

      return true;
    });
  });

  async ngOnInit(): Promise<void> {
    await this.loadAllNotes();
  }

  async loadAllNotes(): Promise<void> {
    this.loading.set(true);
    try {
      this.localNotes.set(this.notesService.getLocalNotes());
      const srv = await this.notesService.getServerNotes();
      this.serverNotes.set(srv);
    } catch (err) {
      console.error('Errore nel recupero delle note dal server:', err);
    } finally {
      this.loading.set(false);
    }
  }

  openCreateModal(asPrivate = false): void {
    this.isEditing.set(false);
    this.noteDraft = {
      title: '',
      content: '',
      author: asPrivate ? 'Io' : 'Carovana',
      category: asPrivate ? 'Personale' : 'Generale',
      is_private: asPrivate,
      is_pinned: false
    };
    this.showEditorModal.set(true);
  }

  openEditModal(note: NoteItem, event?: Event): void {
    if (event) {
      event.preventDefault();
      event.stopPropagation();
    }
    this.isEditing.set(true);
    this.noteDraft = JSON.parse(JSON.stringify(note));
    this.showEditorModal.set(true);
  }

  closeEditorModal(): void {
    this.showEditorModal.set(false);
  }

  async saveNote(): Promise<void> {
    if (!this.noteDraft.title?.trim() || !this.noteDraft.content?.trim()) return;

    this.isSaving.set(true);
    try {
      if (this.isEditing() && this.noteDraft.id) {
        // MODIFICA
        if (this.noteDraft.is_private) {
          const updated = this.notesService.updateLocalNote(this.noteDraft as NoteItem);
          this.localNotes.update((list) => list.map((item) => (String(item.id) === String(updated.id) ? updated : item)));
        } else {
          const updated = await this.notesService.updateServerNote(this.noteDraft as NoteItem);
          this.serverNotes.update((list) => list.map((item) => (item.id === updated.id ? updated : item)));
        }
      } else {
        // CREAZIONE
        if (this.noteDraft.is_private) {
          const created = this.notesService.createLocalNote(this.noteDraft);
          this.localNotes.update((list) => [created, ...list]);
        } else {
          const created = await this.notesService.createServerNote(this.noteDraft);
          this.serverNotes.update((list) => [created, ...list]);
        }
      }
      this.closeEditorModal();
    } catch (err) {
      console.error('Errore durante il salvataggio della nota:', err);
      alert('Impossibile salvare la nota. Riprova.');
    } finally {
      this.isSaving.set(false);
    }
  }

  async togglePin(note: NoteItem, event: Event): Promise<void> {
    event.preventDefault();
    event.stopPropagation();

    const nextPin = !note.is_pinned;
    if (note.is_private) {
      const updated = this.notesService.updateLocalNote({ ...note, is_pinned: nextPin });
      this.localNotes.update((list) => list.map((item) => (String(item.id) === String(updated.id) ? updated : item)));
    } else {
      const updated = await this.notesService.updateServerNote({ ...note, is_pinned: nextPin });
      this.serverNotes.update((list) => list.map((item) => (item.id === updated.id ? updated : item)));
    }
  }

async deleteNote(note: Partial<NoteItem>, event: Event): Promise<void> {
    event.preventDefault();
    event.stopPropagation();

    if (!note.id) return;

    const targetType = note.is_private ? 'privata (dal tuo browser)' : 'comune (da Neon DB per tutto il party)';
    if (!confirm(`Vuoi davvero eliminare definitivamente la nota "${note.title || 'senza titolo'}" ${targetType}?`)) {
      return;
    }

    if (note.is_private) {
      this.notesService.deleteLocalNote(note.id);
      this.localNotes.update((list) => list.filter((item) => String(item.id) !== String(note.id)));
    } else {
      await this.notesService.deleteServerNote(note.id);
      this.serverNotes.update((list) => list.filter((item) => item.id !== note.id));
    }

    if (String(this.noteDraft.id) === String(note.id)) {
      this.closeEditorModal();
    }
  }
}