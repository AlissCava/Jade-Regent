CREATE TABLE spells (
  id SERIAL PRIMARY KEY,
  name VARCHAR(150) NOT NULL UNIQUE,
  druid_level INTEGER,            -- Livello druido (0-9), NULL se non accessibile
  magus_level INTEGER,            -- Livello magus (0-6), NULL se non accessibile
  school VARCHAR(80),
  short_description TEXT,
  full_description TEXT,          -- Testo completo delle regole
  casting_time VARCHAR(50),       -- Es. 1 azione standard
  range VARCHAR(50),              -- Es. Contatto, Vicino (7,5 m + 1,5 m/2 livelli)
  duration VARCHAR(100),          -- Es. 1 round/livello, Istantaneo
  saving_throw VARCHAR(100),      -- Es. Volontà nega, Tempra parziale
  spell_res VARCHAR(50),          -- Es. Sì, No
  source VARCHAR(100),
  golarion_url TEXT
);

CREATE INDEX idx_spells_druid ON spells (druid_level);
CREATE INDEX idx_spells_magus ON spells (magus_level);