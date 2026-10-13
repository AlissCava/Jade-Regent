import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterLink } from '@angular/router';

export interface CharacterEntry {
  slug: string;
  name: string;
  kanji?: string;
  className: string;
  race: string;
  level: number;
  icon: string;
  theme: 'crimson' | 'emerald' | 'blue' | 'amber' | 'violet';
  subtitle: string;
}

@Component({
  selector: 'app-characters-list',
  standalone: true,
  imports: [CommonModule, RouterLink],
  templateUrl: './characters-list.html',
  styleUrl: './characters-list.scss'
})
export class CharactersListComponent {
  characters: CharacterEntry[] = [
    {
      slug: 'ryoujin',
      name: 'Ryoujin',
      kanji: '竜刃',
      className: 'Samurai (Ordine del Ronin)',
      race: 'Tiefling (Oni-Spawn)',
      level: 7,
      icon: '⚔️',
      theme: 'crimson',
      subtitle: 'Spadaccino in prima linea • Lupo Hisui'
    },
    {
      slug: 'airyn',
      name: 'Airyn',
      className: 'Druido',
      race: 'Silfide',
      level: 7,
      icon: '🌿',
      theme: 'emerald',
      subtitle: 'Magia divina e forme selvatiche'
    },
    {
      slug: 'azoi',
      name: 'Azoi',
      className: 'Magus',
      race: 'Tengu',
      level: 7,
      icon: '⚡',
      theme: 'blue',
      subtitle: 'Spellstrike e combattimento con incantesimi'
    },
    {
      slug: 'kaede',
      name: 'Kaede',
      className: 'Ninja',
      race: 'Kitsune',
      level: 7,
      icon: '🦊',
      theme: 'amber',
      subtitle: 'Arti ninja, furtività e colpi letali'
    },
    {
      slug: 'nijena',
      name: 'Aasimar',
      className: 'Barda',
      race: 'Barda',
      level: 7,
      icon: '🪕',
      theme: 'violet',
      subtitle: 'Canti, ispirazione coraggio e supporto'
    }
  ];
}