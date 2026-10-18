export interface SpecialAbilityItem {
  name: string;
  type: 'Ex' | 'Sp' | 'Su' | '';
  description: string;
}

export interface EnemyStatblock {
  id: string;
  name: string;
  title_line?: string;
  cr?: string;
  xp?: string;
  gender_race_class?: string;
  alignment_size_type?: string;
  init?: string;
  senses?: string;
  perception?: string;
  aura?: string;

  // DEFENSE
  ac?: string;
  hp?: string;
  fort?: string;
  ref?: string;
  will?: string;
  defensive_abilities?: string;
  dr?: string;
  immune?: string;
  resist?: string;
  sr?: string;
  weaknesses?: string;

  // OFFENSE
  speed?: string;
  melee?: string;
  ranged?: string;
  space_reach?: string;
  special_attacks?: string;
  spells_prepared?: string;
  spells_known?: string;

  // TACTICS
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
  bab?: string;
  cmb?: string;
  cmd?: string;
  feats?: string;
  skills?: string;
  languages?: string;
  sq?: string;
  gear?: string;

  // SPECIAL ABILITIES & EXTRA
  special_abilities: SpecialAbilityItem[];
  notes?: string;

  created_at?: string;
  updated_at?: string;
}