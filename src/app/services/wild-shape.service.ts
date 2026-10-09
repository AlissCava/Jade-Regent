import { Injectable, inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { WildShape } from '../models/wild-shape.model';

@Injectable({
  providedIn: 'root'
})
export class WildShapeService {
  private http = inject(HttpClient);
  private apiUrl = '/api/animals';

  getAllShapes(): Observable<WildShape[]> {
    return this.http.get<WildShape[]>(this.apiUrl);
  }
}
