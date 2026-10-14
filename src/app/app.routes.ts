import { Routes } from '@angular/router';
import { HomeComponent } from './pages/home/home';
import { CharactersListComponent } from './pages/characters-list/characters-list';
import { CharacterSheetComponent } from './pages/character-sheet/character-sheet';
import { WildShapesComponent } from './pages/wild-shapes/wild-shapes';
import { SpellsComponent } from './pages/spells/spells';
import { ChroniclesComponent } from './pages/chronicles/chronicles';
import { InitiativeComponent } from './pages/initiative/initiative';
import { InventoryComponent } from './pages/inventory/inventory';

export const routes: Routes = [
  { path: '', component: HomeComponent, title: 'Caravan Codex • Jade Regent' },
  { path: 'characters', component: CharactersListComponent, title: 'Eroi del Party • Jade Regent' },
  { path: 'characters/:slug', component: CharacterSheetComponent, title: 'Scheda Personaggio • Jade Regent' },
  { path: 'character', component: CharacterSheetComponent, title: 'Scheda Personaggio • Jade Regent' },
  { path: 'wild-shapes', component: WildShapesComponent, title: 'Forma Selvatica • Airyn' },
  { path: 'spells', component: SpellsComponent, title: 'Grimorio Incantesimi' },
  { path: 'chronicles', component: ChroniclesComponent, title: 'Cronache della Carovana • Jade Regent' },
  { path: 'initiative', component: InitiativeComponent, title: 'Ordine d\'Iniziativa • Combattimento' },
  { path: 'inventory', component: InventoryComponent, title: 'Inventario & Tesori • Jade Regent' },
  { path: '**', redirectTo: '' }
];