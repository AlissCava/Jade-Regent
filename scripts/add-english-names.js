import fs from 'fs';
import path from 'path';

const CONCURRENCY = 6;
const DELAY_MS = 50;

function cleanText(text) {
  if (!text) return '';
  return text
    .replace(/<[^>]*>/g, '')
    .replace(/&quot;/g, '"')
    .replace(/&#039;/g, "'")
    .replace(/&amp;/g, '&')
    .replace(/&rsquo;/g, "'")
    .replace(/&lsquo;/g, "'")
    .replace(/&nbsp;/g, ' ')
    .replace(/\s+/g, ' ')
    .trim();
}

function escapeSql(text) {
  if (!text) return 'NULL';
  return `'${text.replace(/'/g, "''")}'`;
}

function isValidEnglishName(val) {
  if (!val) return false;
  const clean = val.trim();
  if (clean.length < 2 || clean.length > 80) return false;
  // Esclude parole chiave o etichette tecniche errate
  if (/^(livello|tempo|scuola|componenti|raggio|bersaglio|durata|tiro|resistenza)/i.test(clean)) return false;
  return true;
}

function extractEnglishName(html) {
  // Prendi la prima sezione della pagina (prima delle statistiche di lancio)
  const headerChunk = html.substring(0, 2000);

  // Strategia 1: Parentesi con corsivo (es. (<i>Shocking Grasp</i>) o (in inglese <i>Fireball</i>))
  const italicParenMatch = headerChunk.match(/\(\s*(?:in inglese:?\s*)?(?:<i>\vert{}<em>)([^<)]+)(?:<\/i>\vert{}<\/em>)\s*\)/i);
  if (italicParenMatch) {
    const val = cleanText(italicParenMatch[1]);
    if (isValidEnglishName(val)) return val;
  }

  // Strategia 2: Corsivo che include le parentesi (es. <i>(Fireball)</i>)
  const parenInsideItalic = headerChunk.match(/(?:<i>|<em>)\s*\(\s*([^<)]+)\s*\)\s*(?:<\/i>|<\/em>)/i);
  if (parenInsideItalic) {
    const val = cleanText(parenInsideItalic[1]);
    if (isValidEnglishName(val)) return val;
  }

  // Strategia 3: Parentesi tonde dopo il primo titolo in grassetto (es. <b>Stretta Folgorante</b> (Shocking Grasp))
  const afterBoldMatch = headerChunk.match(/<(?:b|strong)>[^<]+<\/(?:b|strong)>\s*\(\s*([A-Za-z0-9\s',/-]+)\s*\)/i);
  if (afterBoldMatch) {
    const val = cleanText(afterBoldMatch[1]);
    if (isValidEnglishName(val)) return val;
  }

  // Strategia 4: Link d20pfsrd presente in fondo alla scheda (es. .../magic/all-spells/s/shocking-grasp)
  const d20Match = html.match(/d20pfsrd\.com\/magic\/all-spells\/[a-z]\/([a-z0-9-]+)/i);
  if (d20Match) {
    const slug = d20Match[1];
    let formatted = slug
      .replace(/-s-/g, "'s ")
      .replace(/-s$/g, "'s")
      .split('-')
      .map(word => word.charAt(0).toUpperCase() + word.slice(1))
      .join(' ');
    if (isValidEnglishName(formatted)) return formatted;
  }

  return null;
}

async function fetchEnglishName(spell) {
  try {
    const res = await fetch(spell.url);
    if (!res.ok) return null;
    const html = await res.text();
    const enName = extractEnglishName(html);
    return { name: spell.name, english_name: enName };
  } catch {
    return null;
  }
}

async function run() {
  const seedPath = path.resolve('sql', 'seed_spells.sql');
  if (!fs.existsSync(seedPath)) {
    console.error('❌ File sql/seed_spells.sql non trovato.');
    return;
  }

  console.log('📖 Lettura lista incantesimi...');
  const content = fs.readFileSync(seedPath, 'utf-8');
  const lines = content.split(/\r?\n/);

  const spells = [];
  for (const rawLine of lines) {
    const line = rawLine.trim();
    const matchName = line.match(/^\s*\('((?:''|[^'])*)'/);
    const matchUrl = line.match(/'(https?:\/\/[^']+)'/);

    if (matchName && matchUrl) {
      spells.push({
        name: matchName[1].replace(/''/g, "'"),
        url: matchUrl[1]
      });
    }
  }

  console.log(`🎯 Trovati ${spells.length} incantesimi. Estrazione nomi inglesi in corso...`);

  const results = [];
  let index = 0;

  async function worker() {
    while (index < spells.length) {
      const current = spells[index++];
      const data = await fetchEnglishName(current);
      if (data && data.english_name) {
        results.push(data);
        if (results.length <= 3) {
          console.log(`✨ Esempio estratto: "${data.name}" -> "${data.english_name}"`);
        }
      }

      if (index % 30 === 0 || index === spells.length) {
        process.stdout.write(`\r⏳ Progresso: ${index}/${spells.length} incantesimi verificati...`);
      }
      await new Promise((r) => setTimeout(r, DELAY_MS));
    }
  }

  const workers = Array.from({ length: CONCURRENCY }, () => worker());
  await Promise.all(workers);

  console.log(`\n\n✨ Trovati ${results.length} nomi inglesi su ${spells.length}!`);

  let sql = `-- Aggiornamento nomi inglesi incantesimi\n`;
  for (const item of results) {
    sql += `UPDATE spells SET english_name = ${escapeSql(item.english_name)} WHERE name = ${escapeSql(item.name)};\n`;
  }

  const outPath = path.resolve('sql', 'update_english_names.sql');
  fs.writeFileSync(outPath, sql, 'utf-8');
  console.log(`💾 File SQL generato in: ${outPath}`);
}

run();