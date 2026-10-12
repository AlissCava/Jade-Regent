import { Component, OnInit, inject, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { SessionService } from '../../services/session.service';
import { SessionRecord } from '../../models/session.model';

@Component({
  selector: 'app-chronicles',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './chronicles.html',
  styleUrl: './chronicles.scss'
})
export class ChroniclesComponent implements OnInit {
  private sessionService = inject(SessionService);

  sessions = signal<SessionRecord[]>([]);
  loadingList = signal<boolean>(true);
  dateOrder = signal<'desc' | 'asc'>('desc'); // 'desc' = più recente prima, 'asc' = cronologico

  // STATO BOX UPLOAD
  uploadBoxOpen = signal<boolean>(false);
  selectedFile: File | null = null;
  newSessionNumber = signal<number>(1);
  newSessionDate = signal<string>(new Date().toISOString().split('T')[0]);

  // PROGRESSO ELABORAZIONE
  isProcessing = signal<boolean>(false);
  uploadProgress = signal<number>(0);
  processStatusText = signal<string>('');
  errorMessage = signal<string>('');

  // STATO MODIFICA INLINE
  editingSessionId = signal<number | null>(null);
  editBuffer!: SessionRecord;

  ngOnInit(): void {
    this.loadSessions();
  }

  loadSessions(): void {
    this.loadingList.set(true);
    this.sessionService.getSessions(this.dateOrder()).subscribe({
      next: (data) => {
        this.sessions.set(data);
        if (data.length > 0) {
          const maxNum = Math.max(...data.map(s => s.session_number || 0));
          this.newSessionNumber.set(maxNum + 1);
        }
        this.loadingList.set(false);
      },
      error: () => this.loadingList.set(false)
    });
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
    if (!this.selectedFile) {
      this.errorMessage.set('Seleziona prima un file audio');
      return;
    }

    this.isProcessing.set(true);
    this.errorMessage.set('');
    this.uploadProgress.set(0);
    this.processStatusText.set('Preparazione caricamento diretto...');

    try {
      // 1. Richiedi l'URL di caricamento diretto a Google
      const { uploadUrl } = await this.sessionService.initDirectUpload(this.selectedFile).toPromise() as any;

      // 2. Carica il file pesante con barra di avanzamento
      this.processStatusText.set(`Caricamento audio (${(this.selectedFile.size / (1024 * 1024)).toFixed(1)} MB)...`);
      const fileUri = await this.sessionService.uploadAudioFile(uploadUrl, this.selectedFile, (pct) => {
        this.uploadProgress.set(pct);
      });

      // 3. Elaborazione AI e salvataggio su Neon
      this.processStatusText.set('Gemini sta ascoltando la sessione e redigendo la cronaca...');
      this.sessionService.processSessionAudio(fileUri, this.newSessionDate(), this.newSessionNumber()).subscribe({
        next: (newSession) => {
          this.isProcessing.set(false);
          this.selectedFile = null;
          this.uploadBoxOpen.set(false);
          this.loadSessions();
        },
        error: (err) => {
          this.isProcessing.set(false);
          this.errorMessage.set(err.error?.error || 'Errore durante la generazione della cronaca');
        }
      });
    } catch (err: any) {
      this.isProcessing.set(false);
      this.errorMessage.set(err.message || 'Errore nel caricamento del file');
    }
  }

  // ================= MODIFICA MANUALE =================
  startEditing(session: SessionRecord): void {
    this.editingSessionId.set(session.id);
    this.editBuffer = JSON.parse(JSON.stringify(session));
  }

  cancelEditing(): void {
    this.editingSessionId.set(null);
  }

  saveEditing(): void {
    if (!this.editBuffer) return;
    this.sessionService.updateSession(this.editBuffer).subscribe({
      next: (updated) => {
        this.sessions.update(list => list.map(s => s.id === updated.id ? updated : s));
        this.editingSessionId.set(null);
      },
      error: () => alert('Errore nel salvataggio della modifica.')
    });
  }

  deleteSession(id: number): void {
    if (!confirm('Vuoi davvero eliminare questa cronaca di sessione?')) return;
    this.sessionService.deleteSession(id).subscribe({
      next: () => {
        this.sessions.update(list => list.filter(s => s.id !== id));
      }
    });
  }
}
