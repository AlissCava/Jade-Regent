import { neon } from '@neondatabase/serverless';
import * as dotenv from 'dotenv';
dotenv.config({ path: '.env.local' });
dotenv.config();

const databaseUrl = process.env.DATABASE_URL;
if (!databaseUrl) {
  console.error('❌ Errore: DATABASE_URL non trovata nelle variabili d\'ambiente (.env o .env.local).');
  process.exit(1);
}

const sql = neon(databaseUrl);
const GOLARION_API = 'https://golarion.altervista.org/api.php';

// Chiamata all'API MediaWiki con parsing HTML e gestione redirect
async function fetchWikiPage(title) {
  const url = `${GOLARION_API}?action=parse&page=${encodeURIComponent(title)}&prop=text|wikitext&redirects=1&format=json`;
  const res = await fetch(url, { headers: { 'User-Agent': 'JadeRegentBot/1.0' } });
  if (!res.ok) throw new Error(`HTTP ${res.status} per ${title}`);
  const json = await res.json();
  if (json.error) throw new Error(json.error.info);
  return json.parse;
}

// Estrae gli incantesimi direttamente dalle righe della tabella HTML
async function getSpellsForLevel(level) {
  const pageTitles = [
    `Incantesimi da Bardo/Scaldo ${level}`,
    `Incantesimi da bardo/scaldo ${level}`,
    `Incantesimi da Bardo ${level}`
  ];

  let parsedHtml = null;
  let matchedTitle = '';

  for (const t of pageTitles) {
    try {
      const page = await fetchWikiPage(t);
      if (page && page.text && page.text['*']) {
        parsedHtml = page.text['*'];
        matchedTitle = page.title;
        break;
      }
    } catch {
      // Prova il formato successivo
    }
  }

  if (!parsedHtml) {
    console.warn(`⚠️ Pagina per livello ${level} non trovata, salto.`);
    return [];
  }

  console.log(`📖 Analisi Livello ${level} da: "${matchedTitle}"...`);

  const spells = [];

  // Isola le tabelle dei contenuti (wikitable)
  const tableRegex = /<table[^>]*class="[^"]*wikitable[^"]*"[^>]*>([\s\S]*?)<\/table>/gi;
  let tableMatch;

  while ((tableMatch = tableRegex.exec(parsedHtml)) !== null) {
    const tableBody = tableMatch[1];
    // Isola ogni singola riga della tabella
    const rowRegex = /<tr[^>]*>([\s\S]*?)<\/tr>/gi;
    let rowMatch;

    while ((rowMatch = rowRegex.exec(tableBody)) !== null) {
      const rowContent = rowMatch[1];

      // Ignora le righe di intestazione (<th>)
      if (rowContent.includes('<th') && !rowContent.includes('<td')) continue;

      // Estrae la prima cella <td> della riga (contiene il nome dell'incantesimo)
      const firstTdMatch = rowContent.match(/<td[^>]*>([\s\S]*?)<\/td>/i);
      if (!firstTdMatch) continue;

      const firstTd = firstTdMatch[1];

      // Cerca il tag <a href="/wiki/..." ...>Nome</a>
      const linkMatch = firstTd.match(/<a\s+[^>]*href="\/wiki\/([^"#:]+)"[^>]*>([^<]+)<\/a>/i);
      if (!linkMatch) continue;

      const rawWikiPage = decodeURIComponent(linkMatch[1]).replace(/_/g, ' ').trim();
      const displayName = linkMatch[2].trim();

      // Esclude link non pertinenti
      if (
        rawWikiPage.toLowerCase().includes('manuale') ||
        rawWikiPage.toLowerCase().includes('regole') ||
        rawWikiPage.toLowerCase() === 'bardo' ||
        rawWikiPage.toLowerCase() === 'scaldo'
      ) {
        continue;
      }

      spells.push({
        name: displayName,
        wikiPage: rawWikiPage,
        level,
        golarionUrl: `https://golarion.altervista.org/wiki/${encodeURIComponent(rawWikiPage.replace(/ /g, '_'))}`
      });
    }
  }

  return spells;
}

// Estrae i dettagli tecnici dalla scheda del singolo incantesimo
async function fetchSpellDetails(pageTitle) {
  try {
    const page = await fetchWikiPage(pageTitle);
    const raw = page.wikitext ? page.wikitext['*'] : '';

    const getParam = (paramName) => {
      const regex = new RegExp(`\\|\\s*${paramName}\\s*=\\s*([^\\|\\}\\n]+)`, 'i');
      const match = raw.match(regex);
      return match ? match[1].replace(/\[\[\vert{}\]\]/g, '').trim() : null;
    };

    const englishName = getParam('NomeInglese') || getParam('Nome Originale') || null;
    const school = getParam('Scuola') || null;
    const castingTime = getParam('TempoLancio') || getParam('Tempo di Lancio') || '1 azione standard';
    const range = getParam('RaggioAzione') || getParam('Raggio di Azione') || 'Vicino';
    const duration = getParam('Durata') || 'Istantaneo';
    const savingThrow = getParam('TiroSalvezza') || getParam('Tiro Salvezza') || 'Nessuno';
    const spellRes = getParam('ResistenzaIncantesimi') || getParam('Resistenza agli Incantesimi') || 'No';
    const shortDesc = getParam('DescrizioneBreve') || getParam('Descrizione Breve') || '';

    let fullDesc = '';
    const descMatch = raw.match(/==\s*Descrizione\s*==([\s\S]*?)(?:==|$)/i);
    if (descMatch) {
      fullDesc = descMatch[1]
        .replace(/\[\[(?:[^\]\Vert{}]*\Vert{})?([^\]]+)\]\]/g, '$1')
        .replace(/\{\{[^\}]+\}\}/g, '')
        .trim();
    }

    return {
      englishName,
      school,
      castingTime,
      range,
      duration,
      savingThrow,
      spellRes,
      shortDescription: shortDesc || (fullDesc ? fullDesc.slice(0, 160) + '...' : ''),
      fullDescription: fullDesc || shortDesc
    };
  } catch {
    return null;
  }
}

async function run() {
  console.log('🚀 Avvio importazione incantesimi del Bardo su Neon DB...\n');

  const allBardSpells = [];

  for (let lvl = 0; lvl <= 6; lvl++) {
    const levelSpells = await getSpellsForLevel(lvl);
    allBardSpells.push(...levelSpells);
  }

  // Deduplicazione per nome e livello
  const uniqueSpells = [];
  const seen = new Set();
  for (const s of allBardSpells) {
    const key = `${s.name.toLowerCase()}_${s.level}`;
    if (!seen.has(key)) {
      seen.add(key);
      uniqueSpells.push(s);
    }
  }

  console.log(`\n📋 Trovati ${uniqueSpells.length} incantesimi unici per il Bardo.`);
  console.log('⏳ Inizio sincronizzazione con Neon Database...\n');

  let updatedCount = 0;
  let insertedCount = 0;
  let errorCount = 0;

  for (let i = 0; i < uniqueSpells.length; i++) {
    const s = uniqueSpells[i];
    process.stdout.write(`[${i + 1}/${uniqueSpells.length}] ${s.name} (Liv. ${s.level})... `);

    try {
      // 1. Controlla se esiste già nella tabella
      const existing = await sql`
        SELECT id, bard_level FROM spells 
        WHERE LOWER(name) = LOWER(${s.name}) 
           OR golarion_url = ${s.golarionUrl}
        LIMIT 1;
      `;

      if (existing.length > 0) {
        await sql`
          UPDATE spells 
          SET bard_level = ${s.level}
          WHERE id = ${existing[0].id};
        `;
        process.stdout.write(`✅ Aggiornato bard_level.\n`);
        updatedCount++;
      } else {
        // 2. Se non esiste, scarica i dettagli della scheda
        const details = await fetchSpellDetails(s.wikiPage);

        await sql`
          INSERT INTO spells (
            name, english_name, druid_level, magus_level, bard_level,
            school, short_description, full_description, casting_time,
            range, duration, saving_throw, spell_res, source, golarion_url
          ) VALUES (
            ${s.name},
            ${details?.englishName || null},
            NULL,
            NULL,
            ${s.level},
            ${details?.school || 'Universale'},
            ${details?.shortDescription || 'Incantesimo da Bardo.'},
            ${details?.fullDescription || ''},
            ${details?.castingTime || '1 azione standard'},
            ${details?.range || 'Contatto'},
            ${details?.duration || 'Istantaneo'},
            ${details?.savingThrow || 'Nessuno'},
            ${details?.spellRes || 'No'},
            'Manuale di Gioco',
            ${s.golarionUrl}
          );
        `;
        process.stdout.write(`✨ Inserito nuovo.\n`);
        insertedCount++;
      }
    } catch (err) {
      process.stdout.write(`❌ Errore: ${err.message}\n`);
      errorCount++;
    }

    await new Promise((r) => setTimeout(r, 80));
  }

  console.log('\n=======================================');
  console.log(`🎉 Sincronizzazione completata!`);
  console.log(`🔄 Incantesimi esistenti aggiornati: ${updatedCount}`);
  console.log(`➕ Nuovi incantesimi Bardo inseriti: ${insertedCount}`);
  if (errorCount > 0) console.log(`⚠️ Errori riscontrati: ${errorCount}`);
  console.log('=======================================');
}

run().catch(console.error);