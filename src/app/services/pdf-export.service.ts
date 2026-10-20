import { Injectable } from '@angular/core';
import { EnemyStatblock } from '../models/enemy-statblock.model';

@Injectable({
  providedIn: 'root'
})
export class PdfExportService {
  private pdfMakePromise: Promise<any> | null = null;

  private loadPdfMakeGlobal(): Promise<any> {
    if (typeof window === 'undefined') return Promise.reject();
    if ((window as any).pdfMake && (window as any).pdfMake.createPdf) {
      return Promise.resolve((window as any).pdfMake);
    }
    if (this.pdfMakePromise) return this.pdfMakePromise;

    this.pdfMakePromise = new Promise((resolve, reject) => {
      const loadScript = (src: string): Promise<void> => {
        return new Promise((res, rej) => {
          if (document.querySelector(`script[src="${src}"]`)) {
            res();
            return;
          }
          const s = document.createElement('script');
          s.src = src;
          s.async = true;
          s.onload = () => res();
          s.onerror = (err) => rej(err);
          document.head.appendChild(s);
        });
      };

      loadScript('https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.10/pdfmake.min.js')
        .then(() => loadScript('https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.10/vfs_fonts.js'))
        .then(() => {
          const pm = (window as any).pdfMake;
          if (pm && pm.createPdf) {
            resolve(pm);
          } else {
            reject(new Error('pdfMake non pronto'));
          }
        })
        .catch((err) => reject(err));
    });

    return this.pdfMakePromise;
  }

  async downloadStatblockPdf(enemy: EnemyStatblock): Promise<void> {
    try {
      const pdfMake = await this.loadPdfMakeGlobal();
      const docDefinition = this.buildDocDefinition(enemy);
      const filename = `${(enemy.name || 'Statblock').replace(/[^a-zA-Z0-9_-]/g, '_')}_CR${enemy.cr || 'X'}.pdf`;
      pdfMake.createPdf(docDefinition).download(filename);
    } catch (err: any) {
      console.error('Errore generazione PDF:', err);
      alert('Errore durante la generazione del PDF. Riprova tra qualche istante.');
    }
  }

  // Parser per testo con corsivo (*...*) e apice (^...^)
  parseRichTextToPdfChunks(text: string, baseFontSize = 9): any[] {
    if (!text) return [];

    // Riconosce tag HTML o Markdown per grassetto, corsivo e apice
    const regex = /(\*\*.*?\*\*|<b>.*?<\/b>|<strong>.*?<\/strong>|\*.*?\*|_.*?_|<i>.*?<\/i>|<em>.*?<\/em>|\^.*?\^|<sup>.*?<\/sup>)/g;
    const parts = text.split(regex);
    const chunks: any[] = [];

    for (const part of parts) {
      if (!part) continue;

      if ((part.startsWith('**') && part.endsWith('**')) || (part.startsWith('<b>') && part.endsWith('</b>')) || (part.startsWith('<strong>') && part.endsWith('</strong>'))) {
        const clean = part.replace(/^(\*\*|<b>|<strong>)/, '').replace(/(\*\*|<\/b>|<\/strong>)$/, '');
        chunks.push({ text: clean, bold: true });
      } else if ((part.startsWith('*') && part.endsWith('*')) || (part.startsWith('_') && part.endsWith('_')) || (part.startsWith('<i>') && part.endsWith('</i>')) || (part.startsWith('<em>') && part.endsWith('</em>'))) {
        const clean = part.replace(/^(\*|_|<i>|<em>)/, '').replace(/(\*|_|<\/i>|<\/em>)$/, '');
        chunks.push({ text: clean, italics: true });
      } else if ((part.startsWith('^') && part.endsWith('^')) || (part.startsWith('<sup>') && part.endsWith('</sup>'))) {
        const clean = part.replace(/^(\^|<sup>)/, '').replace(/(\^|<\/sup>)$/, '');
        chunks.push({ text: clean, fontSize: Math.max(6, Math.round(baseFontSize * 0.72)) });
      } else {
        chunks.push({ text: part });
      }
    }
    return chunks;
  }

  private buildDocDefinition(enemy: EnemyStatblock): any {
    const content: any[] = [];
    const crXp = `CR ${enemy.cr || '?'}` + (enemy.xp ? ` (XP ${enemy.xp})` : '');

    // HEADER
    content.push({
      columns: [
        { text: `${enemy.name || 'Senza Nome'}, ${enemy.title_line || ''}`, fontSize: 13, bold: true, width: '*' },
        { text: crXp, fontSize: 11, bold: true, alignment: 'right', width: 'auto' }
      ],
      margin: [0, 0, 0, 2]
    });

    if (enemy.gender_race_class) content.push({ text: enemy.gender_race_class, fontSize: 9.5, italics: true, margin: [0, 0, 0, 2] });
    if (enemy.alignment_size_type) content.push({ text: enemy.alignment_size_type, fontSize: 9.5, margin: [0, 0, 0, 2] });

    // INIT, SENSES, PERCEPTION, AURA (TUTTE ETICHETTE IN GRASSETTO)
    const initSensesLine: any[] = [
      { text: 'Init ', bold: true },
      { text: `${enemy.init || '+0'}; ` },
      { text: 'Senses ', bold: true },
      { text: `${enemy.senses || '-'}; ` },
      { text: 'Perception ', bold: true },
      { text: `${enemy.perception || '+0'}` }
    ];
    if (enemy.aura) {
      initSensesLine.push({ text: '; Aura ', bold: true }, { text: enemy.aura });
    }
    content.push({ text: initSensesLine, fontSize: 9.5, margin: [0, 0, 0, 6] });

    // DEFENSE
    content.push(this.sectionHeader('DEFENSE'));

    // AC (gestione sia campi separati che stringa legacy)
    const acLine: any[] = [{ text: 'AC ', bold: true }];
    if (enemy.ac_total) {
      acLine.push(
        { text: `${enemy.ac_total}, touch ${enemy.ac_touch || '10'}, flat-footed ${enemy.ac_flat_footed || '10'}` }
      );
      if (enemy.ac_modifiers) {
        acLine.push({ text: ` (${enemy.ac_modifiers})` });
      }
    } else {
      acLine.push({ text: enemy.ac || '10' });
    }
    content.push({ text: acLine, fontSize: 9.5, margin: [0, 2, 0, 2] });

    content.push({ text: [{ text: 'hp ', bold: true }, enemy.hp || '10'], fontSize: 9.5, margin: [0, 0, 0, 2] });

    // FORT, REF, WILL (IN GRASSETTO)
    content.push({
      text: [
        { text: 'Fort ', bold: true },
        { text: `${enemy.fort || '+0'}, ` },
        { text: 'Ref ', bold: true },
        { text: `${enemy.ref || '+0'}, ` },
        { text: 'Will ', bold: true },
        { text: `${enemy.will || '+0'}` }
      ],
      fontSize: 9.5,
      margin: [0, 0, 0, 2]
    });

    const defArr: string[] = [];
    if (enemy.defensive_abilities) defArr.push(enemy.defensive_abilities);
    if (enemy.dr) defArr.push(`DR ${enemy.dr}`);
    if (enemy.immune) defArr.push(`Immune ${enemy.immune}`);
    if (enemy.resist) defArr.push(`Resist ${enemy.resist}`);
    if (enemy.sr) defArr.push(`SR ${enemy.sr}`);
    if (defArr.length > 0) content.push({ text: [{ text: 'Defensive Abilities ', bold: true }, defArr.join('; ')], fontSize: 9.5, margin: [0, 0, 0, 2] });
    if (enemy.weaknesses) content.push({ text: [{ text: 'Weaknesses ', bold: true }, enemy.weaknesses], fontSize: 9.5, margin: [0, 0, 0, 4] });

    // OFFENSE
    content.push(this.sectionHeader('OFFENSE'));
    content.push({ text: [{ text: 'Spd ', bold: true }, enemy.speed || '30 ft.'], fontSize: 9.5, margin: [0, 2, 0, 2] });
    if (enemy.melee) content.push({ text: [{ text: 'Melee ', bold: true }, enemy.melee], fontSize: 9.5, margin: [0, 0, 0, 2] });
    if (enemy.ranged) content.push({ text: [{ text: 'Ranged ', bold: true }, enemy.ranged], fontSize: 9.5, margin: [0, 0, 0, 2] });

    // SPACE & REACH (IN GRASSETTO)
    if (enemy.space_reach) {
      const parts = enemy.space_reach.split(/;\s*reach\s*/i);
      const spaceVal = parts[0]?.replace(/^space\s*/i, '').trim() || '5 ft.';
      const reachVal = parts[1]?.trim() || '5 ft.';
      content.push({
        text: [
          { text: 'Space ', bold: true },
          { text: `${spaceVal}; ` },
          { text: 'Reach ', bold: true },
          { text: reachVal }
        ],
        fontSize: 9.5,
        margin: [0, 0, 0, 2]
      });
    }

    if (enemy.special_attacks) content.push({ text: [{ text: 'Special Attacks ', bold: true }, enemy.special_attacks], fontSize: 9.5, margin: [0, 0, 0, 2] });

    // INCANTESIMI CON PARSER CORSIVO & APICE RIGA PER RIGA
    if (enemy.spells_prepared) {
      content.push({ text: 'Spells Prepared', bold: true, fontSize: 9.5, margin: [0, 3, 0, 2] });
      for (const line of enemy.spells_prepared.split('\n')) {
        const trimmed = line.trim();
        if (trimmed) {
          content.push({ text: this.parseRichTextToPdfChunks(trimmed, 9), fontSize: 9, margin: [0, 0, 0, 1.5] });
        }
      }
    }

    if (enemy.spells_known) {
      content.push({ text: 'Spells Known', bold: true, fontSize: 9.5, margin: [0, 3, 0, 2] });
      for (const line of enemy.spells_known.split('\n')) {
        const trimmed = line.trim();
        if (trimmed) {
          content.push({ text: this.parseRichTextToPdfChunks(trimmed, 9), fontSize: 9, margin: [0, 0, 0, 1.5] });
        }
      }
    }

    // TACTICS
    if (enemy.before_combat || enemy.during_combat || enemy.morale || enemy.base_statistics) {
      content.push(this.sectionHeader('TACTICS'));
      if (enemy.before_combat) content.push({ text: [{ text: 'Before Combat ', bold: true }, enemy.before_combat], fontSize: 9.5, margin: [0, 2, 0, 2] });
      if (enemy.during_combat) content.push({ text: [{ text: 'During Combat ', bold: true }, enemy.during_combat], fontSize: 9.5, margin: [0, 0, 0, 2] });
      if (enemy.morale) content.push({ text: [{ text: 'Morale ', bold: true }, enemy.morale], fontSize: 9.5, margin: [0, 0, 0, 2] });
      if (enemy.base_statistics) content.push({ text: [{ text: 'Base Statistics ', bold: true }, enemy.base_statistics], fontSize: 9.5, margin: [0, 0, 0, 4] });
    }

    // STATISTICS: STR, DEX, CON, INT, WIS, CHA (IN GRASSETTO)
    content.push(this.sectionHeader('STATISTICS'));
    const ab = enemy.abilities || { str: '10', dex: '10', con: '10', int: '10', wis: '10', cha: '10' };
    content.push({
      text: [
        { text: 'Str ', bold: true },
        { text: `${ab.str || '10'}, ` },
        { text: 'Dex ', bold: true },
        { text: `${ab.dex || '10'}, ` },
        { text: 'Con ', bold: true },
        { text: `${ab.con || '-'}, ` },
        { text: 'Int ', bold: true },
        { text: `${ab.int || '10'}, ` },
        { text: 'Wis ', bold: true },
        { text: `${ab.wis || '10'}, ` },
        { text: 'Cha ', bold: true },
        { text: `${ab.cha || '10'}` }
      ],
      fontSize: 9.5,
      margin: [0, 2, 0, 2]
    });

    // BASE ATK, CMB, CMD (IN GRASSETTO)
    content.push({
      text: [
        { text: 'Base Atk ', bold: true },
        { text: `${enemy.bab || '+0'}; ` },
        { text: 'CMB ', bold: true },
        { text: `${enemy.cmb || '+0'}; ` },
        { text: 'CMD ', bold: true },
        { text: `${enemy.cmd || '10'}` }
      ],
      fontSize: 9.5,
      margin: [0, 0, 0, 2]
    });

    if (enemy.feats) content.push({ text: [{ text: 'Feats ', bold: true }, enemy.feats], fontSize: 9.5, margin: [0, 0, 0, 2] });
    if (enemy.skills) content.push({ text: [{ text: 'Skills ', bold: true }, enemy.skills], fontSize: 9.5, margin: [0, 0, 0, 2] });
    if (enemy.languages) content.push({ text: [{ text: 'Languages ', bold: true }, enemy.languages], fontSize: 9.5, margin: [0, 0, 0, 2] });
    if (enemy.sq) content.push({ text: [{ text: 'SQ ', bold: true }, enemy.sq], fontSize: 9.5, margin: [0, 0, 0, 2] });
    if (enemy.gear) content.push({ text: [{ text: 'Gear ', bold: true }, enemy.gear], fontSize: 9.5, margin: [0, 0, 0, 4] });

    // SPECIAL ABILITIES
    if (enemy.special_abilities && enemy.special_abilities.length > 0) {
      content.push(this.sectionHeader('SPECIAL ABILITIES'));
      for (const sa of enemy.special_abilities) {
        content.push({
          text: [
            { text: `${sa.name}${sa.type ? ' (' + sa.type + ')' : ''}: `, bold: true },
            sa.description || ''
          ],
          fontSize: 9,
          margin: [0, 2, 0, 3]
        });
      }
    }

    return {
      content,
      pageSize: 'A4',
      pageMargins: [36, 36, 36, 36],
      defaultStyle: {
        lineHeight: 1.15
      }
    };
  }

  private sectionHeader(title: string): any {
    return {
      table: {
        widths: ['*'],
        body: [
          [
            {
              text: title,
              fillColor: '#1c2438',
              color: '#f59e0b',
              bold: true,
              fontSize: 9.5,
              margin: [3, 2, 3, 2]
            }
          ]
        ]
      },
      layout: 'noBorders',
      margin: [0, 4, 0, 2]
    };
  }
}