import { Component, OnInit, inject, signal, computed } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { CharacterService } from '../../services/character.service';
import { CharacterRecord, CharacterSheetData, SkillItem, WeaponItem, FeatItem, SpecialResourceItem } from '../../models/character.model';

export interface RollResult {
  title: string;
  d20: number;
  rolls: number[];
  formula: string;
  total: number;
  isCrit: boolean;
  isFumble: boolean;
  breakdown: string;
}

const DEFAULT_RYOUJIN_SKILLS: SkillItem[] = [
  { name: 'Acrobazia', stat: 'DES', bonus: -3 },
  { name: 'Addestrare animali', stat: 'CAR', bonus: 10 },
  { name: 'Artista della fuga', stat: 'DES', bonus: -3 },
  { name: 'Camuffare', stat: 'CAR', bonus: 3 },
  { name: 'Cavalcare', stat: 'DES', bonus: 13 },
  { name: 'Diplomazia', stat: 'CAR', bonus: 5 },
  { name: 'Furtività', stat: 'DES', bonus: -3 },
  { name: 'Guarire', stat: 'SAG', bonus: 1 },
  { name: 'Intimidire', stat: 'CAR', bonus: 11 },
  { name: 'Percepire intenzioni', stat: 'SAG', bonus: 10 },
  { name: 'Percezione', stat: 'SAG', bonus: 7 },
  { name: 'Raggirare', stat: 'CAR', bonus: 5 },
  { name: 'Scalare', stat: 'FOR', bonus: 7 },
  { name: 'Valutare', stat: 'INT', bonus: 5 },
  { name: 'Conoscenze locali', stat: 'INT', bonus: 10 },
  { name: 'Conoscenze nobiltà', stat: 'INT', bonus: 6 },
  { name: 'Nuotare', stat: 'FOR', bonus: 7 }
];

@Component({
  selector: 'app-character-sheet',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './character-sheet.html',
  styleUrl: './character-sheet.scss'
})
export class CharacterSheetComponent implements OnInit {
  private charService = inject(CharacterService);
  private route = inject(ActivatedRoute);

  characterSlug = 'ryoujin';
  loading = signal<boolean>(true);
  notFound = signal<boolean>(false);
  saving = signal<boolean>(false);
  saveSuccess = signal<boolean>(false);

  charRecord = signal<CharacterRecord | null>(null);
  activeTab = signal<'main' | 'companion' | 'roller'>('main');

  rollerChar = signal<string>('main');
  rollerSection = signal<'combat' | 'damage' | 'saves' | 'skills'>('combat');

  // MODIFICATORI DI LANCIO CHECKBOX
  modInspire = signal<boolean>(false);
  modDivineFavor = signal<boolean>(false);
  modPrayer = signal<boolean>(false);
  modChallenge = signal<boolean>(false);
  modFlank = signal<boolean>(false);
  modBanner = signal<boolean>(false);

  lastResult = signal<RollResult | null>(null);

  // ACCESSIBILITÀ SCREEN READER & TTS
  voiceAnnouncement = signal<string>('');
  ttsAudioEnabled = signal<boolean>(false);

  // MODALE MODIFICA & LEVEL UP
  showLevelUpModal = signal<boolean>(false);
  modalTab = signal<'general' | 'stats' | 'weapons' | 'feats' | 'skills' | 'companion'>('general');
  editLevel = signal<number>(7);
  editName = '';
  editClass = '';
  editData!: CharacterSheetData;

  // Moduli per inserimento al volo
  newSkillName = '';
  newSkillStat = 'DES';
  newWpnName = '';
  newWpnAtk = '+10/+5';
  newWpnDmg = '1d8+4';
  newWpnCrit = '20/x2';
  newWpnSpecial = '';
  newFeatTitle = '';
  newFeatTag = 'Generale';
  newFeatDesc = '';

  // BUFF TATTICI SCHEDA
  inspireCourage = signal<boolean>(false);
  bannerActive = signal<boolean>(false);
  challengeActive = signal<boolean>(false);
  flanking = signal<boolean>(false);
  divineFavorActive = signal<boolean>(false);
  powerAttack = signal<boolean>(false);

  // CALCOLI STATISTICHE DINAMICHE
  get charLevel(): number { return this.charRecord()?.level ?? 7; }
  get charBab(): number { return this.charRecord()?.data.character.bab ?? 7; }
  get charStrMod(): number {
    const str = this.charRecord()?.data.character.str ?? 10;
    return Math.floor((str - 10) / 2);
  }
  get charDexMod(): number {
    const dex = this.charRecord()?.data.character.dex ?? 10;
    return Math.floor((dex - 10) / 2);
  }

  // Risorse dinamiche
  get resolvePips(): number[] {
    const max = this.charRecord()?.data.character.resolve_max || Math.max(1, Math.floor(this.charLevel / 2));
    return Array.from({ length: max }, (_, i) => i);
  }

  get challengePips(): number[] {
    const max = this.charRecord()?.data.character.challenge_max || Math.max(1, Math.ceil(this.charLevel / 3));
    return Array.from({ length: max }, (_, i) => i);
  }

  attackMod = computed(() => {
    let mod = 0;
    if (this.inspireCourage()) mod += 2;
    if (this.bannerActive()) mod += 1;
    if (this.challengeActive()) mod += 2;
    if (this.flanking()) mod += 2;
    if (this.divineFavorActive()) mod += 2;
    if (this.powerAttack()) mod -= 2;
    return mod;
  });

  damageMod = computed(() => {
    let mod = 0;
    const lvl = this.charRecord()?.level || 7;
    if (this.inspireCourage()) mod += 2;
    if (this.challengeActive()) mod += lvl;
    if (this.divineFavorActive()) mod += 2;
    if (this.powerAttack()) mod += 6;
    return mod;
  });

  ngOnInit(): void {
    const paramSlug = this.route.snapshot.paramMap.get('slug');
    if (paramSlug) this.characterSlug = paramSlug.toLowerCase();
    this.loadCharacter();
  }

  loadCharacter(): void {
    this.loading.set(true);
    this.notFound.set(false);

    this.charService.getCharacter(this.characterSlug).subscribe({
      next: (rec) => {
        // Se la scheda esiste già nel DB Neon, caricala
        if (!rec.data.character.skills || rec.data.character.skills.length === 0) {
          rec.data.character.skills = this.getDefaultSkillsFor(rec.slug);
        }
        this.charRecord.set(rec);
        this.editLevel.set(rec.level);
        this.editName = rec.name;
        this.editClass = rec.class_name;
        this.editData = JSON.parse(JSON.stringify(rec.data));
        this.loading.set(false);
      },
      error: (err) => {
        // SE NON ESISTE SUL DATABASE: AUTO-INIZIALIZZA IL TEMPLATE CORRETTO E SALVA SUBITO ONLINE!
        console.warn(`Scheda per "${this.characterSlug}" non trovata su Neon DB. Inizializzazione automatica in corso...`);
        const template = this.generateDefaultTemplate(this.characterSlug);

        this.charService.createCharacter({
          slug: this.characterSlug,
          name: template.name,
          class_name: template.class_name,
          level: template.level,
          data: template.data
        }).subscribe({
          next: (res) => {
            this.charRecord.set(res.character);
            this.editLevel.set(res.character.level);
            this.editName = res.character.name;
            this.editClass = res.character.class_name;
            this.editData = JSON.parse(JSON.stringify(res.character.data));
            this.loading.set(false);
          },
          error: (saveErr) => {
            console.error('Errore durante il salvataggio automatico del template:', saveErr);
            // Mostra comunque il template in locale per non bloccare l'utente
            const mockRecord: CharacterRecord = {
              id: Date.now(),
              slug: this.characterSlug,
              name: template.name,
              class_name: template.class_name,
              level: template.level,
              data: template.data,
              updated_at: new Date().toISOString()
            };
            this.charRecord.set(mockRecord);
            this.editLevel.set(template.level);
            this.editName = template.name;
            this.editClass = template.class_name;
            this.editData = JSON.parse(JSON.stringify(template.data));
            this.loading.set(false);
          }
        });
      }
    });
  }

  // --- CREAZIONE SCHEDA CON TEMPLATE PRECONFEZIONATI ---
  createCharacterFromTemplate(): void {
    const template = this.generateDefaultTemplate(this.characterSlug);
    this.saving.set(true);

    this.charService.createCharacter({
      slug: this.characterSlug,
      name: template.name,
      class_name: template.class_name,
      level: template.level,
      data: template.data
    }).subscribe({
      next: (res) => {
        this.charRecord.set(res.character);
        this.editLevel.set(res.character.level);
        this.editName = res.character.name;
        this.editClass = res.character.class_name;
        this.editData = JSON.parse(JSON.stringify(res.character.data));
        this.notFound.set(false);
        this.saving.set(false);
      },
      error: (err) => {
        console.error('Errore creazione scheda:', err);
        this.saving.set(false);
      }
    });
  }

  private generateDefaultTemplate(slug: string): { name: string; class_name: string; level: number; data: CharacterSheetData } {
    switch (slug) {
      case 'airyn':
        return {
          name: 'Airyn',
          class_name: 'Druido',
          level: 7,
          data: {
            character: {
              race: 'Silfide',
              alignment: 'Neutrale',
              quote: '«Il vento e la natura rispondono alla mia voce.»',
              hp_max: 52,
              hp_current: 52,
              ac_total: 19,
              ac_touch: 14,
              ac_flat_footed: 16,
              initiative: 4,
              speed_meters: 9,
              speed_squares: 6,
              bab: 5,
              fortitude: 7,
              reflex: 5,
              will: 9,
              str: 10,
              dex: 16,
              con: 14,
              int: 12,
              wis: 18,
              cha: 10,
              weapons: [
                { name: 'Scimitarra +1', attack_bonus: '+9', damage: '1d6+1', crit: '18-20/x2', special: 'Tagliente' },
                { name: 'Bastone Ferrato', attack_bonus: '+5', damage: '1d6', crit: '20/x2', special: 'Contundente' }
              ],
              feats: [
                { name: 'Incantesimi Naturali', tag: 'Druido', description: 'Permette di lanciare incantesimi mentre si è in Forma Selvatica.' },
                { name: 'Schivare', tag: 'Difesa', description: '+1 bonus di schivare alla CA.' }
              ],
              special_resources: [
                { name: 'Forma Selvatica', icon: '🐾', current: 3, max: 3, description: 'Usi giornalieri di trasformazione animale.' }
              ],
              skills: [
                { name: 'Conoscenze (Natura)', stat: 'INT', bonus: 11 },
                { name: 'Percezione', stat: 'SAG', bonus: 14 },
                { name: 'Sapienza Magica', stat: 'INT', bonus: 11 },
                { name: 'Sopravvivenza', stat: 'SAG', bonus: 14 }
              ]
            }
          }
        };

      case 'nijena':
        return {
          name: 'Nijena',
          class_name: 'Barda',
          level: 7,
          data: {
            character: {
              race: 'Aasimar',
              alignment: 'Caotico Buono',
              quote: '«Una melodia può sollevare un esercito o spezzare un cuore.»',
              hp_max: 48,
              hp_current: 48,
              ac_total: 18,
              ac_touch: 13,
              ac_flat_footed: 15,
              initiative: 3,
              speed_meters: 9,
              speed_squares: 6,
              bab: 5,
              fortitude: 4,
              reflex: 8,
              will: 5,
              str: 10,
              dex: 16,
              con: 14,
              int: 12,
              wis: 10,
              cha: 20,
              weapons: [
                { name: 'Stocco +1', attack_bonus: '+9', damage: '1d6+1', crit: '18-20/x2', special: 'Perforante' },
                { name: 'Arco Corto', attack_bonus: '+8', damage: '1d6', crit: '20/x3', special: 'Gittata 18m' }
              ],
              feats: [
                { name: 'Arma Accurata', tag: 'Combattimento', description: 'Usa il modificatore di Destrezza per i TxC con armi leggere.' },
                { name: 'Esibizione Straordinaria', tag: 'Bardo', description: 'Bonus alle esibizioni artistiche.' }
              ],
              special_resources: [
                { name: 'Esibizione Bardica', icon: '🎵', current: 21, max: 21, description: 'Round di musica e canti bardici al giorno.' }
              ],
              skills: [
                { name: 'Intrattenere (Canto)', stat: 'CAR', bonus: 15 },
                { name: 'Diplomazia', stat: 'CAR', bonus: 15 },
                { name: 'Raggirare', stat: 'CAR', bonus: 15 },
                { name: 'Percezione', stat: 'SAG', bonus: 10 }
              ]
            }
          }
        };

      case 'kaede':
        return {
          name: 'Kaede',
          class_name: 'Ninja',
          level: 7,
          data: {
            character: {
              race: 'Kitsune',
              alignment: 'Neutrale',
              quote: '«Colpisci dall’ombra prima che si accorgano che sei lì.»',
              hp_max: 52,
              hp_current: 52,
              ac_total: 20,
              ac_touch: 15,
              ac_flat_footed: 15,
              initiative: 6,
              speed_meters: 9,
              speed_squares: 6,
              bab: 5,
              fortitude: 4,
              reflex: 10,
              will: 2,
              str: 10,
              dex: 20,
              con: 14,
              int: 12,
              wis: 10,
              cha: 16,
              weapons: [
                { name: 'Wakizashi Perfetto', attack_bonus: '+11', damage: '1d6', crit: '18-20/x2', special: '+4d6 Furtivo' },
                { name: 'Shuriken', attack_bonus: '+10', damage: '1d2', crit: '20/x2', special: '+4d6 Furtivo a distanza' }
              ],
              feats: [
                { name: 'Arma Accurata', tag: 'Combattimento', description: 'Usa la DES per il TxC.' },
                { name: 'Iniziativa Migliorata', tag: 'Combattimento', description: '+4 ai tiri di iniziativa.' }
              ],
              special_resources: [
                { name: 'Riserva Ki', icon: '🌀', current: 6, max: 6, description: 'Punti Ki per attacchi extra, velocità o invisibilità.' }
              ],
              skills: [
                { name: 'Furtività', stat: 'DES', bonus: 15 },
                { name: 'Acrobazia', stat: 'DES', bonus: 15 },
                { name: 'Disattivare Congegni', stat: 'DES', bonus: 15 },
                { name: 'Rapidità di Mano', stat: 'DES', bonus: 14 }
              ]
            }
          }
        };

      case 'azoi':
        return {
          name: 'Azoi',
          class_name: 'Magus',
          level: 7,
          data: {
            character: {
              race: 'Umano',
              alignment: 'Legale Neutrale',
              quote: '«La lama conduce l’acciaio, l’arcano consuma il nemico.»',
              hp_max: 55,
              hp_current: 55,
              ac_total: 20,
              ac_touch: 13,
              ac_flat_footed: 17,
              initiative: 3,
              speed_meters: 9,
              speed_squares: 6,
              bab: 5,
              fortitude: 7,
              reflex: 5,
              will: 5,
              str: 14,
              dex: 16,
              con: 14,
              int: 18,
              wis: 10,
              cha: 10,
              weapons: [
                { name: 'Scimitarra +1', attack_bonus: '+10', damage: '1d6+3', crit: '18-20/x2', special: 'Canalizzabile con Spellstrike' }
              ],
              feats: [
                { name: 'Colpo Arcano', tag: 'Magus', description: '+2 ai danni con le armi come azione veloce.' },
                { name: 'Incantesimi in Combattimento', tag: 'Magus', description: '+4 alle prove di concentrazione per lanciare sulla difensiva.' }
              ],
              special_resources: [
                { name: 'Riserva Arcana', icon: '🔮', current: 7, max: 7, description: 'Punti per incantare temporaneamente la lama.' }
              ],
              skills: [
                { name: 'Sapienza Magica', stat: 'INT', bonus: 14 },
                { name: 'Conoscenze (Arcane)', stat: 'INT', bonus: 14 },
                { name: 'Cavalcare', stat: 'DES', bonus: 10 },
                { name: 'Percezione', stat: 'SAG', bonus: 8 }
              ]
            }
          }
        };

      default:
        return {
          name: slug.charAt(0).toUpperCase() + slug.slice(1),
          class_name: 'Avventuriero',
          level: 7,
          data: {
            character: {
              race: 'Umano',
              alignment: 'Neutrale',
              quote: '«In viaggio con la carovana di Sandpoint.»',
              hp_max: 50,
              hp_current: 50,
              ac_total: 18,
              ac_touch: 12,
              ac_flat_footed: 16,
              initiative: 2,
              speed_meters: 9,
              speed_squares: 6,
              bab: 5,
              fortitude: 6,
              reflex: 6,
              will: 6,
              str: 14,
              dex: 14,
              con: 14,
              int: 12,
              wis: 12,
              cha: 12,
              weapons: [
                { name: 'Spada Lunga', attack_bonus: '+8', damage: '1d8+2', crit: '19-20/x2', special: 'Versatile' }
              ],
              feats: [],
              special_resources: [],
              skills: [
                { name: 'Percezione', stat: 'SAG', bonus: 8 },
                { name: 'Furtività', stat: 'DES', bonus: 8 }
              ]
            }
          }
        };
    }
  }

  private getDefaultSkillsFor(slug: string): SkillItem[] {
    if (slug === 'ryoujin') return [...DEFAULT_RYOUJIN_SKILLS];
    return [
      { name: 'Percezione', stat: 'SAG', bonus: 7 },
      { name: 'Furtività', stat: 'DES', bonus: 5 },
      { name: 'Acrobazia', stat: 'DES', bonus: 5 }
    ];
  }

  // --- MODIFICA RAPIDA PUNTI FERITA (SALVA SU NEON) ---
  modifyHp(target: 'main' | 'companion', amount: number): void {
    const rec = this.charRecord();
    if (!rec) return;

    if (target === 'main') {
      const cur = rec.data.character.hp_current;
      const max = rec.data.character.hp_max;
      rec.data.character.hp_current = Math.max(0, Math.min(max, cur + amount));
      this.voiceAnnouncement.set(`Punti ferita: ${rec.data.character.hp_current} su ${max}`);
    } else if (rec.data.companion) {
      const cur = rec.data.companion.hp_current;
      const max = rec.data.companion.hp_max;
      rec.data.companion.hp_current = Math.max(0, Math.min(max, cur + amount));
      this.voiceAnnouncement.set(`Punti ferita compagno: ${rec.data.companion.hp_current} su ${max}`);
    }

    this.charRecord.set({ ...rec });
    this.charService.saveCharacter(rec.slug, rec.level, rec.data).subscribe();
  }

  toggleResource(res: SpecialResourceItem, index: number): void {
    res.current = res.current > index ? index : index + 1;
    const rec = this.charRecord();
    if (rec) {
      this.charService.saveCharacter(rec.slug, rec.level, rec.data).subscribe();
    }
  }

  // --- MODALE LEVEL UP & MODIFICA GENERALE ---
  openLevelUp(): void {
    const rec = this.charRecord();
    if (!rec) return;

    this.editLevel.set(rec.level);
    this.editName = rec.name;
    this.editClass = rec.class_name;
    this.editData = JSON.parse(JSON.stringify(rec.data));

    if (!this.editData.character.weapons) this.editData.character.weapons = [];
    if (!this.editData.character.feats) this.editData.character.feats = [];
    if (!this.editData.character.special_resources) this.editData.character.special_resources = [];

    this.modalTab.set('general');
    this.showLevelUpModal.set(true);
  }

  addWeapon(): void {
    if (!this.newWpnName.trim()) return;
    this.editData.character.weapons?.push({
      name: this.newWpnName.trim(),
      attack_bonus: this.newWpnAtk.trim(),
      damage: this.newWpnDmg.trim(),
      crit: this.newWpnCrit.trim(),
      special: this.newWpnSpecial.trim()
    });
    this.newWpnName = '';
    this.newWpnSpecial = '';
  }

  removeWeapon(index: number): void {
    this.editData.character.weapons?.splice(index, 1);
  }

  addFeat(): void {
    if (!this.newFeatTitle.trim()) return;
    this.editData.character.feats?.push({
      name: this.newFeatTitle.trim(),
      tag: this.newFeatTag.trim(),
      description: this.newFeatDesc.trim()
    });
    this.newFeatTitle = '';
    this.newFeatDesc = '';
  }

  removeFeat(index: number): void {
    this.editData.character.feats?.splice(index, 1);
  }

  adjustSkill(skill: SkillItem, delta: number): void {
    skill.bonus += delta;
  }

  addCustomSkill(): void {
    if (!this.newSkillName.trim()) return;
    this.editData.character.skills?.push({
      name: this.newSkillName.trim(),
      stat: this.newSkillStat,
      bonus: 1
    });
    this.newSkillName = '';
  }

  removeSkill(index: number): void {
    this.editData.character.skills?.splice(index, 1);
  }

  saveLevelUp(): void {
    this.saving.set(true);

    this.charService.saveCharacter(
      this.characterSlug,
      this.editLevel(),
      this.editData,
      this.editName,
      this.editClass
    ).subscribe({
      next: (res) => {
        this.charRecord.set(res.character);
        this.saving.set(false);
        this.saveSuccess.set(true);
        setTimeout(() => {
          this.saveSuccess.set(false);
          this.showLevelUpModal.set(false);
        }, 500);
      },
      error: (err) => {
        console.error('Errore salvataggio scheda:', err);
        this.saving.set(false);
      }
    });
  }

  // --- LANCIATORE DADI DINAMICO ---
  rollAction(title: string, diceCount: number, diceFaces: number, mod: number, critMin = 20): void {
    const rolls: number[] = [];
    let sum = 0;
    for (let i = 0; i < diceCount; i++) {
      const r = Math.floor(Math.random() * diceFaces) + 1;
      rolls.push(r);
      sum += r;
    }

    let extraMod = 0;
    if (this.modInspire()) extraMod += 2;
    if (this.modBanner()) extraMod += 1;
    if (this.modFlank()) extraMod += 2;
    if (this.modDivineFavor()) extraMod += 2;
    if (this.modPrayer()) extraMod += 1;

    const total = sum + mod + extraMod;
    const d20 = diceFaces === 20 ? rolls[0] : 0;
    const isCrit = d20 >= critMin;
    const isFumble = d20 === 1;

    this.lastResult.set({
      title,
      d20,
      rolls,
      formula: `${diceCount}d${diceFaces} + ${mod + extraMod}`,
      total,
      isCrit,
      isFumble,
      breakdown: `Dadi [${rolls.join(', ')}] + Mod: ${mod} ${extraMod ? '(+' + extraMod + ' buff)' : ''}`
    });

    const phrase = `${title}: risultato ${total}.`;
    this.voiceAnnouncement.set(phrase);
    if (this.ttsAudioEnabled() && typeof window !== 'undefined' && 'speechSynthesis' in window) {
      window.speechSynthesis.cancel();
      const u = new SpeechSynthesisUtterance(phrase);
      u.lang = 'it-IT';
      window.speechSynthesis.speak(u);
    }
  }

  quickRoll(faces: number): void {
    const r = Math.floor(Math.random() * faces) + 1;
    this.lastResult.set({
      title: `Tiro 1d${faces}`,
      d20: faces === 20 ? r : 0,
      rolls: [r],
      formula: `1d${faces}`,
      total: r,
      isCrit: r === 20,
      isFumble: r === 1,
      breakdown: `Dado: ${r}`
    });
  }
}