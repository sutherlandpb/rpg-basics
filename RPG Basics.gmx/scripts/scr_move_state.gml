///scr_move_state

var animation_speed = .2;
scr_get_input();

if (dash_key) {
    state = scr_move_dash_state;
    alarm[0] = room_speed/10;
}

if (attack_key) {
    image_index = 0;
    state = scr_attack_state;
}


//get direction
dir = point_direction(0,0, xaxis, yaxis);

//get the length 
if (xaxis == 0 && yaxis == 0) {
    len = 0;
} else {
    len = player_speed
    scr_get_face();
}

//Move
player_horizontal_speed = lengthdir_x(len, dir);
player_vertical_speed = lengthdir_y(len, dir);

phy_position_x += player_horizontal_speed;
phy_position_y += player_vertical_speed;

// control the sprite
image_speed = sign(len) * animation_speed;
if (len == 0) {
    image_speed = 0;
    image_index = 0;
} else {
    image_speed = animation_speed;
}


switch (face) {
    case RIGHT: 
        sprite_index = spr_player_right;
        break;
    case LEFT:
        sprite_index = spr_player_left; 
        break;
    case UP:
        sprite_index = spr_player_up;
        break;
    case DOWN:
        sprite_index = spr_player_down;
        break;        
}
