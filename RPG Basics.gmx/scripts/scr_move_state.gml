///scr_move_state

var animation_speed = .2;
scr_get_input();

//need to do animation
if (right_key || left_key || up_key || down_key) {
    image_speed = animation_speed;
} else {
    image_speed = 0;
    image_index = 0;
}

//right
if (right_key) { 
    phy_position_x += playerSpeed;
    sprite_index = spr_player_right;    
}

//left
if (left_key) { 
    phy_position_x -= playerSpeed;
    sprite_index = spr_player_left;
}

//up
if (up_key) { 
    phy_position_y -= playerSpeed;
    sprite_index = spr_player_up;
}

//down
if (down_key) { 
    phy_position_y += playerSpeed;
    sprite_index = spr_player_down;
}
