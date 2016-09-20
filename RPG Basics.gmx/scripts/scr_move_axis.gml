///scr_move_axis
if (enemy_type == ENEMY_HAS_IDLE) {
    sprite_index = active_sprite;
} 
var dir = point_direction(0, 0, xaxis, yaxis);
var hspd = lengthdir_x(move_speed, dir);
var vspd = lengthdir_y(move_speed, dir);
if (hspd != 0) {
    image_xscale = sign(hspd);
}
scr_get_face(dir);
movement = MOVE;

if (room == rm_random) {
    if (!grid_place_meeting(phy_position_x + hspd, phy_position_y + vspd)) {
        phy_position_x += hspd;
        phy_position_y += vspd;    
    }
} else {
    phy_position_x += hspd;
    phy_position_y += vspd;
}


