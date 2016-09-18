///scr_swap_weapons(new_weapon)
var new_weapon = argument[0];
var tmp_weapon = obj_player_stats.weapon_sprite;
obj_player_stats.weapon_sprite = new_weapon.sprite_index;
new_weapon.sprite_index = tmp_weapon;
