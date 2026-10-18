export interface SpecialAbilityItem {
  name: string;
  type: 'Ex' | 'Sp' | 'Su' | '';
  description: string;
}

export interface EnemyStatblock {
  id: string;
  name: string;                         // es. "Jeva"
  title_line: string;                  // es. "human werewolf Rogue 3 (hybrid form)"
  cr: string;                          // es. "4"
  xp: string;                          // es. "1200"
  gender_race_class: string;           // es. "Female human werewolf rogue 3"
  alignment_size_type: string;         // es. "CE Medium humanoid (human, shapechanger)"
  init: string;                        // es. "+8"
  senses: string;                      // es. "low-light vision, scent"
  perception: string;                  // es. "+9"
  aura?: string;

  // DEFENSE
  ac: string;                          // es. "19, touch 14, flat-footed 15 (+4 Dex, +5 natural)"
  hp: string;                          // es. "43 (4d8+15 and 2d6+6) (RUN AT < 10 hp)"
  fort: string;                        // es. "+7"
  ref: string;                         // es. "+10"
  will: string;                        // es. "+4"
  defensive_abilities?: string;        // es. "evasion"
  dr?: string;                         // es. "5/argento"
  immune?: string;                     // es. "undead traits"
  resist?: string;                     // es. "cold 10, fire 10"
  sr?: string;                         // es. "16"
  weaknesses?: string;                 // es. "vulnerability to sunlight"

  // OFFENSE
  speed: string;                       // es. "30 ft. (9 m)"
  melee: string;                       // es. "2 claws +7 (1d6+4) and bite +9 (1d8+4)"
  ranged?: string;                     // es. "Masterwork longbow +8 (1d8)"
  space_reach?: string;                // es. "5 ft.; Reach 5 ft."
  special_attacks?: string;            // es. "sneak attack +2d6"
  spells_prepared?: string;            // Per incantatori divini/maghi
  spells_known?: string;               // Per bardi/stregoni

  // TACTICS (Ispirato dai tuoi appunti!)
  before_combat?: string;
  during_combat?: string;
  morale?: string;
  base_statistics?: string;

  // STATISTICS
  abilities: {
    str: string;
    dex: string;
    con: string;
    int: string;
    wis: string;
    cha: string;
  };
  bab: string;                         // es. "+3"
  cmb: string;                         // es. "+7"
  cmd: string;                         // es. "21 (10+3 bab +4 dex +4 str)"
  feats: string;                       // es. "Improved Init, Iron Will, Track..."
  skills: string;                      // es. "Acrobatics +10, Bluff +12, Stealth +11..."
  languages: string;                   // es. "Common, Elven"
  sq?: string;                         // es. "alternate form, wolf empathy, trapfinding"
  gear?: string;                       // es. "dagger, garnet ring (10 gp)"

  // SPECIAL ABILITIES & EXTRA
  special_abilities: SpecialAbilityItem[];
  notes?: string;

  created_at: string;
  updated_at: string;
}