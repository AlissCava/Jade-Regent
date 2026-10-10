export interface CharacterSheetData {
  character: {
    race: string;
    alignment: string;
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
    resolve_max: number;
    resolve_current: number;
    challenge_max: number;
    challenge_current: number;
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