import { Component, OnInit, inject, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterLink } from '@angular/router';
import { CharacterService, CharacterSummary } from '../../services/character.service';

@Component({
  selector: 'app-characters-list',
  standalone: true,
  imports: [CommonModule, RouterLink],
  templateUrl: './characters-list.html',
  styleUrl: './characters-list.scss'
})
export class CharactersListComponent implements OnInit {
  private charService = inject(CharacterService);

  characters = signal<CharacterSummary[]>([]);
  loading = signal<boolean>(true);

  ngOnInit(): void {
    this.charService.getAllCharacters().subscribe({
      next: (list: CharacterSummary[]) => {
        this.characters.set(list);
        this.loading.set(false);
      },
      error: () => this.loading.set(false)
    });
  }
}