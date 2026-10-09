import fs from 'fs';
import path from 'path';

const BASE_URL = 'https://golarion.altervista.org/wiki/';

// Pagine da scaricare
const druidLevels = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
const magusLevels = [0, 1, 2, 3, 4, 5, 6];

// Mappa in memoria per unire incantesimi condivisi tra le due classi
const spellsMap = new Map();

function cleanText(text) {
  if (!text) return '';
  return text
    .replace(/<[^>]*>/g, '') // rimuove tag html
    .replace(/&quot;/g, '"')
    .replace(/&#039;/g, "'")
    .replace(/&amp;/g, '&')
    .replace(/\s+/g, ' ')
    .trim();
}

function escapeSql(text) {
  if (!text) return 'NULL';
  return `'${text.replace(/'/g, "''")}'`;
}

async function scrapePage(className, level, pageName) {
  const url = `${BASE_URL}${pageName}`;
  console.log(`📥 Scarico ${className} Livello ${level} (${pageName})...`);

  try {
    const res = await fetch(url);
    if (!res.ok) {
      console.warn(`⚠️ Errore ${res.status} per ${url}`);
      return;
    }

    const html = await res.text();

    // Estrae le righe della tabella (tr)
    const rowRegex = /<tr[^>]*>([\s\S]*?)<\/tr>/gi;
    let rowMatch;

    while ((rowMatch = rowRegex.exec(html)) !== null) {
      const rowContent = rowMatch[1];

      // Ignora le intestazioni
      if (rowContent.includes('<th')) continue;

      // Estrae le celle (td)
      const cellMatches = [...rowContent.matchAll(/<td[^>]*>([\s\S]*?)<\/td>/gi)];
      if (cellMatches.length < 3) continue;

      // Cella 1: Nome con eventuale link
      const nameCell = cellMatches[0][1];
      const linkMatch = nameCell.match(/href="([^"]+)"[^>]*>([^<]+)<\/a>/i);

      let name = '';
      let spellUrl = '';

      if (linkMatch) {
        spellUrl = linkMatch[1].startsWith('http') 
          ? linkMatch[1] 
          : `https://golarion.altervista.org${linkMatch[1]}`;
        name = cleanText(linkMatch[2]);
      } else {
        name = cleanText(nameCell);
      }

      if (!name) continue;

      // Escludi duplicati mitici o note particolari se non desiderati
      if (name.includes('(Mitico)')) continue;

      // Descrizione e Fonte (solitamente celle 2 e 3 o 3 e 4)
      const descCell = cellMatches.length >= 4 ? cellMatches[2][1] : cellMatches[1][1];
      const sourceCell = cellMatches[cellMatches.length - 1][1];

      const description = cleanText(descCell);
      const source = cleanText(sourceCell);

      const key = name.toLowerCase();

      if (!spellsMap.has(key)) {
        spellsMap.set(key, {
          name,
          druid_level: null,
          magus_level: null,
          short_description: description,
          source: source,
          golarion_url: spellUrl
        });
      }

      const entry = spellsMap.get(key);
      if (className === 'Druido') {
        entry.druid_level = level;
      } else if (className === 'Magus') {
        entry.magus_level = level;
      }
    }
  } catch (err) {
    console.error(`❌ Errore scraping ${url}:`, err);
  }
}

async function run() {
  console.log('🚀 Avvio estrazione completa del Compendio Incantesimi...');

  // 1. Scarica Druido 0..9
  for (const lvl of druidLevels) {
    await scrapePage('Druido', lvl, `Incantesimi_da_Druido_${lvl}`);
  }

  // 2. Scarica Magus 0..6
  for (const lvl of magusLevels) {
    await scrapePage('Magus', lvl, `Incantesimi_da_Magus_${lvl}`);
  }

  console.log(`\n✨ Trovati ${spellsMap.size} incantesimi unici!`);

  // 3. Genera il file SQL
  let sql = `-- Popolamento completo Incantesimi Druido e Magus da Golarion Wiki\n`;
  sql += `INSERT INTO spells (name, druid_level, magus_level, short_description, source, golarion_url)\nVALUES\n`;

  const values = [];
  for (const s of spellsMap.values()) {
    const dLvl = s.druid_level !== null ? s.druid_level : 'NULL';
    const mLvl = s.magus_level !== null ? s.magus_level : 'NULL';
    values.push(
      `  (${escapeSql(s.name)}, ${dLvl}, ${mLvl}, ${escapeSql(s.short_description)}, ${escapeSql(s.source)}, ${escapeSql(s.golarion_url)})`
    );
  }

  sql += values.join(',\n') + ';\n';

  const outputDir = path.resolve('sql');
  if (!fs.existsSync(outputDir)) {
    fs.mkdirSync(outputDir, { recursive: true });
  }

  const outputPath = path.join(outputDir, 'seed_spells.sql');
  fs.writeFileSync(outputPath, sql, 'utf-8');

  console.log(`💾 File SQL generato con successo in: ${outputPath}`);
}

run();
