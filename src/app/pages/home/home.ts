import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterOutlet, RouterLink } from '@angular/router'; // <-- Aggiungi RouterLink se manca

@Component({
  selector: 'app-home',
  standalone: true,
  imports: [
    CommonModule, 
    RouterOutlet, 
    RouterLink,],
  templateUrl: './home.html',
  styleUrl: './home.scss'
})
export class HomeComponent {}