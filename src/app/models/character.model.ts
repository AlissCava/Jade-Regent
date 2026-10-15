export interface SkillItem {
  name: string;
  stat: string;
  bonus: number;
}

export interface WeaponItem {
  name: string;
  attack_bonus: string;
  damage: string;
  crit: string;
  special?: string;
}

export interface FeatItem {
  name: string;
  tag?: string;
  description: string;
}

export interface SpecialResourceItem {
  name: string;
  icon?: string;
  current: number;
  max: number;
  description?: string;
}

export interface CharacterSheetData {
  character: {
    race: string;
    alignment: string;
    quote?: string;
    hp_max: number;
    hp_current: number;
    ac_total: number;
    ac_touch: number;
    ac_flat_footed: number;
    initiative: number;
    speed_meters: number;
    speed_squares: number;
    bab: number;
    fortitude: number;
    reflex: number;
    will: number;
    str: number;
    dex: number;
    con: number;
    int: number;
    wis: number;
    cha: number;
    resolve_max?: number;
    resolve_current?: number;
    challenge_max?: number;
    challenge_current?: number;
    weapons?: WeaponItem[];
    feats?: FeatItem[];
    special_resources?: SpecialResourceItem[];
    skills?: SkillItem[];
    notes?: string;
  };
  companion?: {
    name: string;
    type: string;
    hd: number;
    hp_max: number;
    hp_current: number;
    ac_total: number;
    ac_touch: number;
    ac_flat_footed: number;
    initiative: number;
    speed_meters: number;
    speed_squares: number;
    fortitude: number;
    reflex: number;
    will: number;
    str: number;
    dex: number;
    con: number;
    int: number;
    wis: number;
    cha: number;
    attack_name: string;
    attack_bonus: number;
    damage_dice: string;
    trip_cmb: number;
    skills?: SkillItem[];
  };
}

export interface CharacterRecord {
  id: number;
  slug: string;
  name: string;
  class_name: string;
  level: number;
  data: CharacterSheetData;
  updated_at: string;
}

export interface CharacterSummary {
  id: number;
  slug: string;
  name: string;
  class_name: string;
  level: number;
  race?: string;
  updated_at: string;
}