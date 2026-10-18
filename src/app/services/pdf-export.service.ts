import { Injectable } from '@angular/core';
import { EnemyStatblock } from '../models/enemy-statblock.model';

@Injectable({
  providedIn: 'root'
})
export class PdfExportService {
  private pdfMakePromise: Promise<any> | null = null;

  // Caricamento asincrono sicuro degli script pdfMake
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

      // Carica da CDN affidabile in scope globale (dove window.pdfMake e vfs funzionano al 100%)
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
    } catch (err) {
      console.warn('pdfMake bloccato o non disponibile, avvio fallback su Stampa/Salva PDF nativo:', err);
      this.printStatblockNative(enemy);
    }
  }

  // Fallback nativo: crea una finestra con impaginazione A4 Paizo e apre "Salva come PDF"
  printStatblockNative(enemy: EnemyStatblock): void {
    const w = window.open('', '_blank');
    if (!w) {
      alert('Finestra pop-up bloccata. Abilita i popup per salvare il PDF.');
      return;
    }

    const ab = enemy.abilities || { str: '10', dex: '10', con: '10', int: '10', wis: '10', cha: '10' };
    const html = `
      <!DOCTYPE html>
      <html>
      <head>
        <meta charset="utf-8">
        <title>${enemy.name} - Statblock Pathfinder 1E</title>
        <style>
          @page { size: A4; margin: 15mm; }
          body { font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif; font-size: 10pt; line-height: 1.25; color: #000; margin: 0; }
          .header-row { display: flex; justify-content: space-between; align-items: baseline; border-bottom: 2px solid #000; padding-bottom: 3px; margin-bottom: 4px; }
          .title { font-size: 13pt; font-weight: bold; }
          .cr { font-size: 11pt; font-weight: bold; }
          .sec-header { background: #1c2438; color: #f59e0b; font-weight: bold; font-size: 9pt; letter-spacing: 0.05em; padding: 2px 6px; margin: 6px 0 3px; -webkit-print-color-adjust: exact; print-color-adjust: exact; }
          .line { margin-bottom: 2px; }
          strong { font-weight: bold; }
          .italic { font-style: italic; }
        </style>
      </head>
      <body>
        <div class="header-row">
          <span class="title">${enemy.name}${enemy.title_line ? ', ' + enemy.title_line : ''}</span>
          <span class="cr">CR ${enemy.cr || '?'} ${enemy.xp ? '(XP ' + enemy.xp + ')' : ''}</span>
        </div>
        ${enemy.gender_race_class ? `<div class="line italic">${enemy.gender_race_class}</div>` : ''}
        ${enemy.alignment_size_type ? `<div class="line">${enemy.alignment_size_type}</div>` : ''}
        <div class="line"><strong>Init</strong> ${enemy.init || '+0'}; <strong>Senses</strong> ${enemy.senses || '-'}; <strong>Perception</strong> ${enemy.perception || '+0'}</div>

        <div class="sec-header">DEFENSE</div>
        <div class="line"><strong>AC</strong> ${enemy.ac || '10'}</div>
        <div class="line"><strong>hp</strong> ${enemy.hp || '10'}</div>
        <div class="line"><strong>Fort</strong> ${enemy.fort || '+0'}, <strong>Ref</strong> ${enemy.ref || '+0'}, <strong>Will</strong> ${enemy.will || '+0'}</div>
        ${enemy.defensive_abilities || enemy.dr || enemy.immune || enemy.resist || enemy.sr ? `
          <div class="line"><strong>Defensive Abilities</strong> ${[enemy.defensive_abilities, enemy.dr ? 'DR ' + enemy.dr : '', enemy.immune ? 'Immune ' + enemy.immune : '', enemy.resist ? 'Resist ' + enemy.resist : '', enemy.sr ? 'SR ' + enemy.sr : ''].filter(Boolean).join('; ')}</div>
        ` : ''}

        <div class="sec-header">OFFENSE</div>
        <div class="line"><strong>Spd</strong> ${enemy.speed || '30 ft.'}</div>
        ${enemy.melee ? `<div class="line"><strong>Melee</strong> ${enemy.melee}</div>` : ''}
        ${enemy.ranged ? `<div class="line"><strong>Ranged</strong> ${enemy.ranged}</div>` : ''}
        ${enemy.space_reach ? `<div class="line"><strong>Space</strong> ${enemy.space_reach}</div>` : ''}
        ${enemy.special_attacks ? `<div class="line"><strong>Special Attacks</strong> ${enemy.special_attacks}</div>` : ''}
        ${enemy.spells_prepared ? `<div class="line"><strong>Spells Prepared:</strong><br>${enemy.spells_prepared.replace(/\n/g, '<br>')}</div>` : ''}
        ${enemy.spells_known ? `<div class="line"><strong>Spells Known:</strong><br>${enemy.spells_known.replace(/\n/g, '<br>')}</div>` : ''}

        ${enemy.before_combat || enemy.during_combat || enemy.morale || enemy.base_statistics ? `
          <div class="sec-header">TACTICS</div>
          ${enemy.before_combat ? `<div class="line"><strong>Before Combat</strong> ${enemy.before_combat}</div>` : ''}
          ${enemy.during_combat ? `<div class="line"><strong>During Combat</strong> ${enemy.during_combat}</div>` : ''}
          ${enemy.morale ? `<div class="line"><strong>Morale</strong> ${enemy.morale}</div>` : ''}
          ${enemy.base_statistics ? `<div class="line"><strong>Base Statistics</strong> ${enemy.base_statistics}</div>` : ''}
        ` : ''}

        <div class="sec-header">STATISTICS</div>
        <div class="line"><strong>Str</strong> ${ab.str}, <strong>Dex</strong> ${ab.dex}, <strong>Con</strong> ${ab.con || '-'}, <strong>Int</strong> ${ab.int}, <strong>Wis</strong> ${ab.wis}, <strong>Cha</strong> ${ab.cha}</div>
        <div class="line"><strong>Base Atk</strong> ${enemy.bab || '+0'}; <strong>CMB</strong> ${enemy.cmb || '+0'}; <strong>CMD</strong> ${enemy.cmd || '10'}</div>
        ${enemy.feats ? `<div class="line"><strong>Feats</strong> ${enemy.feats}</div>` : ''}
        ${enemy.skills ? `<div class="line"><strong>Skills</strong> ${enemy.skills}</div>` : ''}
        ${enemy.languages ? `<div class="line"><strong>Languages</strong> ${enemy.languages}</div>` : ''}
        ${enemy.sq ? `<div class="line"><strong>SQ</strong> ${enemy.sq}</div>` : ''}
        ${enemy.gear ? `<div class="line"><strong>Gear</strong> ${enemy.gear}</div>` : ''}

        ${enemy.special_abilities && enemy.special_abilities.length > 0 ? `
          <div class="sec-header">SPECIAL ABILITIES</div>
          ${enemy.special_abilities.map(sa => `<div class="line"><strong>${sa.name}${sa.type ? ' (' + sa.type + ')' : ''}:</strong> ${sa.description}</div>`).join('')}
        ` : ''}

        <script>
          window.onload = function() { window.print(); };
        </script>
      </body>
      </html>
    `;
    w.document.open();
    w.document.write(html);
    w.document.close();
  }

  private buildDocDefinition(enemy: EnemyStatblock): any {
    const content: any[] = [];
    const crXp = `CR ${enemy.cr || '?'}` + (enemy.xp ? ` (XP ${enemy.xp})` : '');

    content.push({
      columns: [
        { text: `${enemy.name || 'Senza Nome'}, ${enemy.title_line || ''}`, fontSize: 13, bold: true, width: '*' },
        { text: crXp, fontSize: 11, bold: true, alignment: 'right', width: 'auto' }
      ],
      margin: [0, 0, 0, 2]
    });

    if (enemy.gender_race_class) content.push({ text: enemy.gender_race_class, fontSize: 9.5, italics: true, margin: [0, 0, 0, 2] });
    if (enemy.alignment_size_type) content.push({ text: enemy.alignment_size_type, fontSize: 9.5, margin: [0, 0, 0, 2] });

    let initSenses = `Init ${enemy.init || '+0'};`;
    if (enemy.senses) initSenses += ` Senses ${enemy.senses};`;
    initSenses += ` Perception ${enemy.perception || '+0'}`;
    if (enemy.aura) initSenses += `; Aura ${enemy.aura}`;
    content.push({ text: initSenses, fontSize: 9.5, margin: [0, 0, 0, 6] });

    // DEFENSE
    content.push(this.sectionHeader('DEFENSE'));
    content.push({ text: [{ text: 'AC ', bold: true }, enemy.ac || '10'], fontSize: 9.5, margin: [0, 2, 0, 2] });
    content.push({ text: [{ text: 'hp ', bold: true }, enemy.hp || '10'], fontSize: 9.5, margin: [0, 0, 0, 2] });
    content.push({ text: `Fort ${enemy.fort || '+0'}, Ref ${enemy.ref || '+0'}, Will ${enemy.will || '+0'}`, fontSize: 9.5, margin: [0, 0, 0, 2] });

    const defArr: string[] = [];
    if (enemy.defensive_abilities) defArr.push(enemy.defensive_abilities);
    if (enemy.dr) defArr.push(`DR ${enemy.dr}`);
    if (enemy.immune) defArr.push(`Immune ${enemy.immune}`);
    if (enemy.resist) defArr.push(`Resist ${enemy.resist}`);
    if (enemy.sr) defArr.push(`SR ${enemy.sr}`);
    if (defArr.length > 0) content.push({ text: [{ text: 'Defensive Abilities ', bold: true }, defArr.join('; ')], fontSize: 9.5, margin: [0, 0, 0, 2] });

    // OFFENSE
    content.push(this.sectionHeader('OFFENSE'));
    content.push({ text: [{ text: 'Spd ', bold: true }, enemy.speed || '30 ft.'], fontSize: 9.5, margin: [0, 2, 0, 2] });
    if (enemy.melee) content.push({ text: [{ text: 'Melee ', bold: true }, enemy.melee], fontSize: 9.5, margin: [0, 0, 0, 2] });
    if (enemy.ranged) content.push({ text: [{ text: 'Ranged ', bold: true }, enemy.ranged], fontSize: 9.5, margin: [0, 0, 0, 2] });
    if (enemy.space_reach) content.push({ text: [{ text: 'Space ', bold: true }, enemy.space_reach], fontSize: 9.5, margin: [0, 0, 0, 2] });
    if (enemy.special_attacks) content.push({ text: [{ text: 'Special Attacks ', bold: true }, enemy.special_attacks], fontSize: 9.5, margin: [0, 0, 0, 2] });
    if (enemy.spells_prepared) content.push({ text: [{ text: 'Spells Prepared\n', bold: true }, enemy.spells_prepared], fontSize: 9, margin: [0, 2, 0, 2] });
    if (enemy.spells_known) content.push({ text: [{ text: 'Spells Known\n', bold: true }, enemy.spells_known], fontSize: 9, margin: [0, 2, 0, 2] });

    // TACTICS
    if (enemy.before_combat || enemy.during_combat || enemy.morale || enemy.base_statistics) {
      content.push(this.sectionHeader('TACTICS'));
      if (enemy.before_combat) content.push({ text: [{ text: 'Before Combat ', bold: true }, enemy.before_combat], fontSize: 9.5, margin: [0, 2, 0, 2] });
      if (enemy.during_combat) content.push({ text: [{ text: 'During Combat ', bold: true }, enemy.during_combat], fontSize: 9.5, margin: [0, 0, 0, 2] });
      if (enemy.morale) content.push({ text: [{ text: 'Morale ', bold: true }, enemy.morale], fontSize: 9.5, margin: [0, 0, 0, 2] });
      if (enemy.base_statistics) content.push({ text: [{ text: 'Base Statistics ', bold: true }, enemy.base_statistics], fontSize: 9.5, margin: [0, 0, 0, 4] });
    }

    // STATISTICS
    content.push(this.sectionHeader('STATISTICS'));
    const ab = enemy.abilities || { str: '10', dex: '10', con: '10', int: '10', wis: '10', cha: '10' };
    content.push({ text: `Str ${ab.str}, Dex ${ab.dex}, Con ${ab.con || '-'}, Int ${ab.int}, Wis ${ab.wis}, Cha ${ab.cha}`, fontSize: 9.5, margin: [0, 2, 0, 2] });
    content.push({ text: `Base Atk ${enemy.bab || '+0'}; CMB ${enemy.cmb || '+0'}; CMD ${enemy.cmd || '10'}`, fontSize: 9.5, margin: [0, 0, 0, 2] });
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