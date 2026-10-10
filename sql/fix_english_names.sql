-- 1. Numeri Romani e Forme (I, II, III, IV)
UPDATE spells SET english_name = 'Undead Anatomy I' WHERE name ILIKE 'Anatomia Non Morta I' OR name = 'Anatomia Non Morta';
UPDATE spells SET english_name = 'Undead Anatomy II' WHERE name ILIKE 'Anatomia Non Morta II' OR name = 'Anatomia Non Morta 2';
UPDATE spells SET english_name = 'Undead Anatomy III' WHERE name ILIKE 'Anatomia Non Morta III' OR name = 'Anatomia Non Morta 3';
UPDATE spells SET english_name = 'Undead Anatomy IV' WHERE name ILIKE 'Anatomia Non Morta IV' OR name = 'Anatomia Non Morta 4';

UPDATE spells SET english_name = 'Elemental Body I' WHERE name ILIKE 'Corpo Elementale I' OR name = 'Corpo Elementale';
UPDATE spells SET english_name = 'Elemental Body II' WHERE name ILIKE 'Corpo Elementale II' OR name = 'Corpo Elementale 2';
UPDATE spells SET english_name = 'Elemental Body III' WHERE name ILIKE 'Corpo Elementale III' OR name = 'Corpo Elementale 3';
UPDATE spells SET english_name = 'Elemental Body IV' WHERE name ILIKE 'Corpo Elementale IV' OR name = 'Corpo Elementale 4';

UPDATE spells SET english_name = 'Monstrous Physique I' WHERE name ILIKE 'Fisico Mostruoso I' OR name = 'Fisico Mostruoso';
UPDATE spells SET english_name = 'Monstrous Physique II' WHERE name ILIKE 'Fisico Mostruoso II' OR name = 'Fisico Mostruoso 2';
UPDATE spells SET english_name = 'Monstrous Physique III' WHERE name ILIKE 'Fisico Mostruoso III' OR name = 'Fisico Mostruoso 3';
UPDATE spells SET english_name = 'Monstrous Physique IV' WHERE name ILIKE 'Fisico Mostruoso IV' OR name = 'Fisico Mostruoso 4';

UPDATE spells SET english_name = 'Beast Shape I' WHERE name ILIKE 'Forma Ferina I' OR name = 'Forma Ferina';
UPDATE spells SET english_name = 'Beast Shape II' WHERE name ILIKE 'Forma Ferina II' OR name = 'Forma Ferina 2';
UPDATE spells SET english_name = 'Beast Shape III' WHERE name ILIKE 'Forma Ferina III' OR name = 'Forma Ferina 3';
UPDATE spells SET english_name = 'Beast Shape IV' WHERE name ILIKE 'Forma Ferina IV' OR name = 'Forma Ferina 4';

UPDATE spells SET english_name = 'Vermin Shape I' WHERE name ILIKE 'Forma Parassitica I' OR name = 'Forma Parassitica';
UPDATE spells SET english_name = 'Vermin Shape II' WHERE name ILIKE 'Forma Parassitica II' OR name = 'Forma Parassitica 2';

UPDATE spells SET english_name = 'Plant Shape I' WHERE name ILIKE 'Forma Vegetale I' OR name = 'Forma Vegetale';
UPDATE spells SET english_name = 'Plant Shape II' WHERE name ILIKE 'Forma Vegetale II' OR name = 'Forma Vegetale 2';
UPDATE spells SET english_name = 'Plant Shape III' WHERE name ILIKE 'Forma Vegetale III' OR name = 'Forma Vegetale 3';

-- 2. Incantesimi "Superiore" -> Greater
UPDATE spells SET english_name = 'Greater Magic Weapon' WHERE name ILIKE '%Arma Magica Superiore%';
UPDATE spells SET english_name = 'Greater Animal Aspect' WHERE name ILIKE '%Aspetto Animale Superiore%';
UPDATE spells SET english_name = 'Greater Invisibility' WHERE name ILIKE '%Invisibilità Superiore%';
UPDATE spells SET english_name = 'Greater Aggressive Thundercloud' WHERE name ILIKE '%Nembo Aggressivo Superiore%';
UPDATE spells SET english_name = 'Greater Thunderstomp' WHERE name ILIKE '%Passo Tonante Superiore%';
UPDATE spells SET english_name = 'Greater Flaming Sphere' WHERE name ILIKE '%Sfera Infuocata Superiore%';
UPDATE spells SET english_name = 'Greater Dispel Magic' WHERE name ILIKE '%Dissolvi Magie Superiore%';

-- 3. Incantesimi "Di Massa / Collettivo" -> Mass
UPDATE spells SET english_name = 'Mass Returning Weapon' WHERE name ILIKE '%Arma Ritornante Collettiv%';
UPDATE spells SET english_name = 'Mass Mount' WHERE name ILIKE '%Cavalcatura Collettiv%';
UPDATE spells SET english_name = 'Mass Bull''s Strength' WHERE name ILIKE '%Forza del Toro di Massa%';
UPDATE spells SET english_name = 'Mass Bear''s Endurance' WHERE name ILIKE '%Resistenza dell''Orso di Massa%';
UPDATE spells SET english_name = 'Mass Reduce Person' WHERE name ILIKE '%Ridurre Persone di Massa%';
UPDATE spells SET english_name = 'Mass Reinforce Armaments' WHERE name ILIKE '%Rinforzare Armamenti Collettiv%';
UPDATE spells SET english_name = 'Mass Cat''s Grace' WHERE name ILIKE '%Grazia del Gatto di Massa%';
UPDATE spells SET english_name = 'Mass Enlarge Person' WHERE name ILIKE '%Ingrandire Persone di Massa%';
UPDATE spells SET english_name = 'Mass Cure Light Wounds' WHERE name ILIKE '%Cura Ferite Leggere di Massa%';
UPDATE spells SET english_name = 'Mass Cure Moderate Wounds' WHERE name ILIKE '%Cura Ferite Moderate di Massa%';
UPDATE spells SET english_name = 'Mass Cure Serious Wounds' WHERE name ILIKE '%Cura Ferite Gravi di Massa%';
UPDATE spells SET english_name = 'Mass Cure Critical Wounds' WHERE name ILIKE '%Cura Ferite Critiche di Massa%';