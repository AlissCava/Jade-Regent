import { Routes } from '@angular/router';
import { HomeComponent } from './pages/home/home';
import { WildShapesComponent } from './pages/wild-shapes/wild-shapes';
import { SpellsComponent } from './pages/spells/spells';
import { CharacterComponent } from './pages/character/character';

export const routes: Routes = [
  { path: '', component: HomeComponent, title: 'Caravan Codex • Jade Regent' },
  { path: 'character', component: CharacterComponent, title: 'Scheda Ryoujin & Hisui • Jade Regent' },
  { path: 'wild-shapes', component: WildShapesComponent, title: 'Forma Selvatica • Airyn' },
  { path: 'spells', component: SpellsComponent, title: 'Grimorio Incantesimi' },
  { path: '**', redirectTo: '' }
];