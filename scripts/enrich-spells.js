import fs from 'fs';
import path from 'path';

const CONCURRENCY = 5; // 5 richieste parallele
const DELAY_MS = 60;   // Pausa per rispettare il server

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

function extractField(html, patterns) {
  for (const pat of patterns) {
    const regex = new RegExp(`<(?:b|strong)>${pat}<\\/(?:b|strong)>:\\s*([^<;\\n\\r]+)`, 'i');
    const match = html.match(regex);
    if (match) {
      const val = cleanText(match[1]);
      if (val.length > 0) return val;
    }
  }
  return null;
}

function extractFullDescription(html) {
  let descStart = -1;
  const headerMatch = html.match(/<(?:b|strong|h2|h3)[^>]*>\s*Descrizione\s*<\/(?:b|strong|h2|h3)>/i);
  if (headerMatch) {
    descStart = headerMatch.index + headerMatch[0].length;
  } else {
    const srMatch = html.match(/<(?:b|strong)>Resistenza agli [Ii]ncantesimi<\/(?:b|strong)>:[^<]*<\/p>/i);
    if (srMatch) {
      descStart = srMatch.index + srMatch[0].length;
    }
  }

  if (descStart === -1) return null;

  let text = html.substring(descStart);

  const cutMatch = text.match(/(?:<div class="printfooter"|<div id="catlinks"|<!--\s*NewPP|<!--\s*Saved in parser cache|<table class="navbox")/i);
  if (cutMatch) {
    text = text.substring(0, cutMatch.index);
  }

  text = text
    .replace(/<\/p>/gi, '\n\n')
    .replace(/<br\s*\/?>/gi, '\n')
    .replace(/<li[^>]*>/gi, '• ')
    .replace(/<\/li>/gi, '\n')
    .replace(/<[^>]*>/g, '')
    .replace(/&quot;/g, '"')
    .replace(/&#039;/g, "'")
    .replace(/&amp;/g, '&')
    .replace(/&rsquo;/g, "'")
    .replace(/&lsquo;/g, "'")
    .replace(/&nbsp;/g, ' ')
    .replace(/[ \t]+/g, ' ')
    .replace(/\n\s+\n/g, '\n\n')
    .trim();

  return text.length > 15 ? text : null;
}

async function scrapeSpellDetails(spell) {
  try {
    const res = await fetch(spell.url);
    if (!res.ok) return null;

    const html = await res.text();

    const school = extractField(html, ['Scuola']);
    const castingTime = extractField(html, ['Tempo di lancio']);
    const range = extractField(html, ['Raggio di azione', 'Raggio']);
    const duration = extractField(html, ['Durata']);
    const savingThrow = extractField(html, ['Tiro Salvezza', 'Tiro salvezza']);
    const spellRes = extractField(html, ['Resistenza agli Incantesimi', 'Resistenza agli incantesimi']);
    const fullDesc = extractFullDescription(html);

    return {
      name: spell.name,
      school,
      castingTime,
      range,
      duration,
      savingThrow,
      spellRes,
      fullDesc
    };
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

  console.log('📖 Lettura lista incantesimi da sql/seed_spells.sql...');
  const content = fs.readFileSync(seedPath, 'utf-8');
  
  // Gestione universale dei ritorni a capo Windows (CRLF) e Linux (LF)
  const lines = content.split(/\r?\n/);

  const spells = [];
  for (const rawLine of lines) {
    const line = rawLine.trim();
    // Estrae il primo parametro (Nome) e l'URL https://
    const matchName = line.match(/^\s*\('((?:''|[^'])*)'/);
    const matchUrl = line.match(/'(https?:\/\/[^']+)'/);

    if (matchName && matchUrl) {
      spells.push({
        name: matchName[1].replace(/''/g, "'"),
        url: matchUrl[1]
      });
    }
  }

  console.log(`🎯 Trovati ${spells.length} incantesimi da arricchire.`);

  if (spells.length === 0) {
    console.warn('⚠️ Nessun incantesimo trovato: verifica che sql/seed_spells.sql contenga righe INSERT.');
    return;
  }

  const enriched = [];
  let index = 0;

  async function worker() {
    while (index < spells.length) {
      const current = spells[index++];
      const data = await scrapeSpellDetails(current);
      if (data) enriched.push(data);

      if (index % 25 === 0 || index === spells.length) {
        process.stdout.write(`\r⏳ Progresso: ${index}/${spells.length} incantesimi analizzati...`);
      }
      await new Promise((r) => setTimeout(r, DELAY_MS));
    }
  }

  const workers = Array.from({ length: CONCURRENCY }, () => worker());
  await Promise.all(workers);

  console.log(`\n\n✨ Dettagli estratti per ${enriched.length} incantesimi.`);

  console.log('💾 Generazione file SQL di aggiornamento...');
  let sql = `-- Aggiornamento descrizioni e statistiche estese incantesimi\n`;
  for (const item of enriched) {
    sql += `UPDATE spells SET\n`;
    sql += `  school = COALESCE(${escapeSql(item.school)}, school),\n`;
    sql += `  casting_time = ${escapeSql(item.castingTime)},\n`;
    sql += `  range = ${escapeSql(item.range)},\n`;
    sql += `  duration = ${escapeSql(item.duration)},\n`;
    sql += `  saving_throw = ${escapeSql(item.savingThrow)},\n`;
    sql += `  spell_res = ${escapeSql(item.spellRes)},\n`;
    sql += `  full_description = ${escapeSql(item.fullDesc)}\n`;
    sql += `WHERE name = ${escapeSql(item.name)};\n\n`;
  }

  const outPath = path.resolve('sql', 'update_spells.sql');
  fs.writeFileSync(outPath, sql, 'utf-8');
  console.log(`✅ File pronto in: ${outPath}`);
}

run();