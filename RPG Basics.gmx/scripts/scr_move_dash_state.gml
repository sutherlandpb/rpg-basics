///scr_move_state_dash
//Move
if (len == 0) {
    dir = face * 90;
}

len = player_speed * 4;

player_horizontal_speed = lengthdir_x(len, dir);
player_vertical_speed = lengthdir_y(len, dir);

phy_position_x += player_horizontal_speed;
phy_position_y += player_vertical_speed;

// create the dash state
var dash = instance_create(x, y, obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;
