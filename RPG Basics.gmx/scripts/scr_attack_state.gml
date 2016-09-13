///scr_attack_state
image_speed = .5;

switch (sprite_index) {
    case spr_player_down : 
        sprite_index = spr_player_attack_down;
        break;
    case spr_player_up : 
        sprite_index = spr_player_attack_up;
        break;    
    case spr_player_left : 
        sprite_index = spr_player_attack_left;
        break;
    case spr_player_right : 
        sprite_index = spr_player_attack_right;
        break;        
}
