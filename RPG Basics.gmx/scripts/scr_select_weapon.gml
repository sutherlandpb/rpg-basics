///scr_select_weapon(WEAPON_CONSTANT)
var weapon = argument[0];

switch (weapon) {
    case WEAPON_SWORD :
        obj_player_stats.weapon_sprite = spr_sword;
        obj_player_stats.current_weapon = weapon;
        break;
    case WEAPON_AXE :
        obj_player_stats.weapon_sprite = spr_axe;
        obj_player_stats.current_weapon = weapon;        
        break;
    case WEAPON_BONE :
        obj_player_stats.weapon_sprite = spr_bone_sword;    
        obj_player_stats.current_weapon = weapon;        
        break;    
    case WEAPON_RAINBOW :
        obj_player_stats.weapon_sprite = spr_rainbow_sword;    
        obj_player_stats.current_weapon = weapon;        
        break;    
    default : 
       break;    
}
