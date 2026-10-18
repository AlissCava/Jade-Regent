import { Injectable } from '@angular/core';
import { EnemyStatblock } from '../models/enemy-statblock.model';

@Injectable({
  providedIn: 'root'
})
export class PdfExportService {
  async downloadStatblockPdf(enemy: EnemyStatblock): Promise<void> {
    // Caricamento asincrono on-demand: scarica pdfmake e i font solo al click
    const [pdfMakeModule, pdfFontsModule] = await Promise.all([
      import('pdfmake/build/pdfmake'),
      import('pdfmake/build/vfs_fonts')
    ]);

    const pdfMake: any = (pdfMakeModule as any).default || pdfMakeModule;
    const pdfFonts: any = (pdfFontsModule as any).default || pdfFontsModule;

    const pdfVfs: any =
      pdfFonts?.pdfMake?.vfs ||
      pdfFonts?.vfs ||
      pdfFonts?.default?.pdfMake?.vfs ||
      pdfFonts?.default ||
      pdfFonts;

    const docDefinition = this.buildDocDefinition(enemy);
    const filename = `${enemy.name.replace(/[^a-zA-Z0-9_-]/g, '_')}_CR${enemy.cr || 'X'}.pdf`;

    pdfMake.createPdf(docDefinition, undefined, undefined, pdfVfs).download(filename);
  }

  private buildDocDefinition(enemy: EnemyStatblock): any {
    const content: any[] = [];

    // --- INTESTAZIONE ---
    const crXp = `CR ${enemy.cr || '?'}` + (enemy.xp ? ` (XP ${enemy.xp})` : '');
    content.push({
      columns: [
        { text: `${enemy.name}, ${enemy.title_line || ''}`, fontSize: 13, bold: true, width: '*' },
        { text: crXp, fontSize: 11, bold: true, alignment: 'right', width: 'auto' }
      ],
      margin: [0, 0, 0, 2]
    });

    if (enemy.gender_race_class) {
      content.push({ text: enemy.gender_race_class, fontSize: 9.5, italics: true, margin: [0, 0, 0, 2] });
    }
    if (enemy.alignment_size_type) {
      content.push({ text: enemy.alignment_size_type, fontSize: 9.5, margin: [0, 0, 0, 2] });
    }

    let initSenses = `Init ${enemy.init || '+0'};`;
    if (enemy.senses) initSenses += ` Senses ${enemy.senses};`;
    initSenses += ` Perception ${enemy.perception || '+0'}`;
    if (enemy.aura) initSenses += `; Aura ${enemy.aura}`;

    content.push({ text: initSenses, fontSize: 9.5, margin: [0, 0, 0, 6] });

    // --- DEFENSE ---
    content.push(this.sectionHeader('DEFENSE'));
    content.push({
      text: [
        { text: 'AC ', bold: true },
        enemy.ac || '10'
      ],
      fontSize: 9.5,
      margin: [0, 2, 0, 2]
    });
    content.push({
      text: [
        { text: 'hp ', bold: true },
        enemy.hp || '10'
      ],
      fontSize: 9.5,
      margin: [0, 0, 0, 2]
    });

    const saves = `Fort ${enemy.fort || '+0'}, Ref ${enemy.ref || '+0'}, Will ${enemy.will || '+0'}`;
    const defAbilitiesArr: string[] = [];
    if (enemy.defensive_abilities) defAbilitiesArr.push(enemy.defensive_abilities);
    if (enemy.dr) defAbilitiesArr.push(`DR ${enemy.dr}`);
    if (enemy.immune) defAbilitiesArr.push(`Immune ${enemy.immune}`);
    if (enemy.resist) defAbilitiesArr.push(`Resist ${enemy.resist}`);
    if (enemy.sr) defAbilitiesArr.push(`SR ${enemy.sr}`);

    content.push({ text: saves, fontSize: 9.5, margin: [0, 0, 0, 2] });

    if (defAbilitiesArr.length > 0) {
      content.push({
        text: [
          { text: 'Defensive Abilities ', bold: true },
          defAbilitiesArr.join('; ')
        ],
        fontSize: 9.5,
        margin: [0, 0, 0, 2]
      });
    }
    if (enemy.weaknesses) {
      content.push({
        text: [
          { text: 'Weaknesses ', bold: true },
          enemy.weaknesses
        ],
        fontSize: 9.5,
        margin: [0, 0, 0, 4]
      });
    }

    // --- OFFENSE ---
    content.push(this.sectionHeader('OFFENSE'));
    content.push({
      text: [
        { text: 'Spd ', bold: true },
        enemy.speed || '30 ft. (9 m)'
      ],
      fontSize: 9.5,
      margin: [0, 2, 0, 2]
    });

    if (enemy.melee) {
      content.push({
        text: [
          { text: 'Melee ', bold: true },
          enemy.melee
        ],
        fontSize: 9.5,
        margin: [0, 0, 0, 2]
      });
    }
    if (enemy.ranged) {
      content.push({
        text: [
          { text: 'Ranged ', bold: true },
          enemy.ranged
        ],
        fontSize: 9.5,
        margin: [0, 0, 0, 2]
      });
    }
    if (enemy.space_reach) {
      const parts = enemy.space_reach.split(';');
      content.push({
        text: [
          { text: 'Space ', bold: true },
          parts[0] || '5 ft.',
          { text: '; Reach ', bold: true },
          parts[1]?.replace(/reach/i, '').trim() || '5 ft.'
        ],
        fontSize: 9.5,
        margin: [0, 0, 0, 2]
      });
    }
    if (enemy.special_attacks) {
      content.push({
        text: [
          { text: 'Special Attacks ', bold: true },
          enemy.special_attacks
        ],
        fontSize: 9.5,
        margin: [0, 0, 0, 2]
      });
    }

    if (enemy.spells_prepared) {
      content.push({ text: [{ text: 'Spells Prepared\n', bold: true }, enemy.spells_prepared], fontSize: 9, margin: [0, 2, 0, 2] });
    }
    if (enemy.spells_known) {
      content.push({ text: [{ text: 'Spells Known\n', bold: true }, enemy.spells_known], fontSize: 9, margin: [0, 2, 0, 2] });
    }

    // --- TACTICS ---
    if (enemy.before_combat || enemy.during_combat || enemy.morale || enemy.base_statistics) {
      content.push(this.sectionHeader('TACTICS'));
      if (enemy.before_combat) {
        content.push({ text: [{ text: 'Before Combat ', bold: true }, enemy.before_combat], fontSize: 9.5, margin: [0, 2, 0, 2] });
      }
      if (enemy.during_combat) {
        content.push({ text: [{ text: 'During Combat ', bold: true }, enemy.during_combat], fontSize: 9.5, margin: [0, 0, 0, 2] });
      }
      if (enemy.morale) {
        content.push({ text: [{ text: 'Morale ', bold: true }, enemy.morale], fontSize: 9.5, margin: [0, 0, 0, 2] });
      }
      if (enemy.base_statistics) {
        content.push({ text: [{ text: 'Base Statistics ', bold: true }, enemy.base_statistics], fontSize: 9.5, margin: [0, 0, 0, 4] });
      }
    }

    // --- STATISTICS ---
    content.push(this.sectionHeader('STATISTICS'));
    const ab = enemy.abilities || { str: '10', dex: '10', con: '10', int: '10', wis: '10', cha: '10' };
    const statLine = `Str ${ab.str}, Dex ${ab.dex}, Con ${ab.con || '-'}, Int ${ab.int}, Wis ${ab.wis}, Cha ${ab.cha}`;
    content.push({ text: statLine, fontSize: 9.5, margin: [0, 2, 0, 2] });

    const combatManeuvers = `Base Atk ${enemy.bab || '+0'}; CMB ${enemy.cmb || '+0'}; CMD ${enemy.cmd || '10'}`;
    content.push({ text: combatManeuvers, fontSize: 9.5, margin: [0, 0, 0, 2] });

    if (enemy.feats) {
      content.push({ text: [{ text: 'Feats ', bold: true }, enemy.feats], fontSize: 9.5, margin: [0, 0, 0, 2] });
    }
    if (enemy.skills) {
      content.push({ text: [{ text: 'Skills ', bold: true }, enemy.skills], fontSize: 9.5, margin: [0, 0, 0, 2] });
    }
    if (enemy.languages) {
      content.push({ text: [{ text: 'Languages ', bold: true }, enemy.languages], fontSize: 9.5, margin: [0, 0, 0, 2] });
    }
    if (enemy.sq) {
      content.push({ text: [{ text: 'SQ ', bold: true }, enemy.sq], fontSize: 9.5, margin: [0, 0, 0, 2] });
    }
    if (enemy.gear) {
      content.push({ text: [{ text: 'Gear ', bold: true }, enemy.gear], fontSize: 9.5, margin: [0, 0, 0, 4] });
    }

    // --- SPECIAL ABILITIES ---
    if (enemy.special_abilities && enemy.special_abilities.length > 0) {
      content.push(this.sectionHeader('SPECIAL ABILITIES'));
      for (const sa of enemy.special_abilities) {
        const typeStr = sa.type ? ` (${sa.type})` : '';
        content.push({
          text: [
            { text: `${sa.name}${typeStr}: `, bold: true },
            sa.description
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
        font: 'Roboto',
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