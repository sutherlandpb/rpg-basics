///scr_move_state

var animation_speed = .2;
scr_get_input();

//get direction
var dir = point_direction(0,0, xaxis, yaxis);

//get the length 
if (xaxis == 0 && yaxis == 0) {
    len = 0;
} else {
    len = player_speed
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

//vertical sprites
if (player_vertical_speed > 0) {
    sprite_index = spr_player_down;
} else if (player_vertical_speed < 0) {
    sprite_index = spr_player_up;
}

//horizontal sprites
if (player_horizontal_speed > 0) {
    sprite_index = spr_player_right;
} else if (player_horizontal_speed < 0) {
    sprite_index = spr_player_left;
}


