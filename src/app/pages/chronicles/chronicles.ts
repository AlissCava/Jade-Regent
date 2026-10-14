import { Component, OnInit, inject, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { SessionService } from '../../services/session.service';
import { SessionRecord } from '../../models/session.model';
import { RouterLink } from '@angular/router';

@Component({
  selector: 'app-chronicles',
  standalone: true,
  imports: [CommonModule, FormsModule, RouterLink],
  templateUrl: './chronicles.html',
  styleUrl: './chronicles.scss'
})
export class ChroniclesComponent implements OnInit {
  private sessionService = inject(SessionService);

  sessions = signal<SessionRecord[]>([]);
  loadingList = signal<boolean>(true);
  dateOrder = signal<'desc' | 'asc'>('desc');

  // Gestione schede aperte/chiuse (Set di ID)
  expandedSessionIds = signal<Set<number>>(new Set());

  // Box Upload
  uploadBoxOpen = signal<boolean>(false);
  selectedFile: File | null = null;
  newSessionNumber: number = 1;
  newSessionDate: string = new Date().toISOString().split('T')[0];

  // Stati elaborazione
  isProcessing = signal<boolean>(false);
  uploadProgress = signal<number>(0);
  processStatusText = signal<string>('');
  errorMessage = signal<string>('');

  // Modifica
  editingSessionId = signal<number | null>(null);
  editBuffer!: SessionRecord;

  ngOnInit(): void {
    this.loadSessions();
  }

  async loadSessions(): Promise<void> {
    this.loadingList.set(true);
    try {
      const data = await this.sessionService.getSessions(this.dateOrder());
      this.sessions.set(data);
      if (data.length > 0) {
        const maxNum = Math.max(...data.map(s => s.session_number || 0));
        this.newSessionNumber = maxNum + 1;
      }
    } catch (err) {
      console.error(err);
    } finally {
      this.loadingList.set(false);
    }
  }

  // Toggle apertura/chiusura scheda
  toggleExpand(id: number): void {
    this.expandedSessionIds.update(set => {
      const next = new Set(set);
      if (next.has(id)) {
        next.delete(id);
      } else {
        next.add(id);
      }
      return next;
    });
  }

  isExpanded(id: number): boolean {
    return this.expandedSessionIds().has(id);
  }

  toggleDateOrder(): void {
    this.dateOrder.update(o => o === 'desc' ? 'asc' : 'desc');
    this.loadSessions();
  }

  onFileSelected(event: Event): void {
    const input = event.target as HTMLInputElement;
    if (input.files && input.files.length > 0) {
      this.selectedFile = input.files[0];
      this.errorMessage.set('');
    }
  }

  async startAudioProcessing(): Promise<void> {
    const file = this.selectedFile;
    if (!file) {
      this.errorMessage.set('Seleziona prima un file audio');
      return;
    }

    this.isProcessing.set(true);
    this.errorMessage.set('');
    this.uploadProgress.set(0);
    this.processStatusText.set('Connessione al canale di caricamento...');

    try {
      const { uploadUrl } = await this.sessionService.initDirectUpload(file);

      this.processStatusText.set(`Caricamento audio (${(file.size / (1024 * 1024)).toFixed(1)} MB)...`);
      const fileUri = await this.sessionService.uploadAudioFile(uploadUrl, file, (pct) => {
        this.uploadProgress.set(pct);
      });

      this.processStatusText.set('Gemini sta ascoltando la sessione e redigendo la cronaca...');
      const created = await this.sessionService.processSessionAudio(
        fileUri, 
        this.newSessionDate, 
        this.newSessionNumber, 
        file.type || 'audio/mp3'
      );

      this.isProcessing.set(false);
      this.selectedFile = null;
      this.uploadBoxOpen.set(false);
      
      // Ricarica e apri subito la nuova scheda appena creata
      await this.loadSessions();
      if (created?.id) {
        this.expandedSessionIds.update(s => new Set(s).add(created.id));
      }
    } catch (err: any) {
      this.isProcessing.set(false);
      this.errorMessage.set(err.message || 'Errore elaborazione sessione');
    }
  }

  startEditing(session: SessionRecord): void {
    // Apri la scheda se è chiusa quando si clicca modifica
    this.expandedSessionIds.update(s => new Set(s).add(session.id));
    this.editingSessionId.set(session.id);
    this.editBuffer = JSON.parse(JSON.stringify(session));
  }

  cancelEditing(): void {
    this.editingSessionId.set(null);
  }

  async saveEditing(): Promise<void> {
    if (!this.editBuffer) return;
    try {
      const updated = await this.sessionService.updateSession(this.editBuffer);
      this.sessions.update(list => list.map(s => s.id === updated.id ? updated : s));
      this.editingSessionId.set(null);
    } catch {
      alert('Errore nel salvataggio della modifica.');
    }
  }

  async deleteSession(id: number): Promise<void> {
    if (!confirm('Vuoi davvero eliminare questa cronaca di sessione?')) return;
    const ok = await this.sessionService.deleteSession(id);
    if (ok) {
      this.sessions.update(list => list.filter(s => s.id !== id));
    }
  }
}