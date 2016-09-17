///scr_enemy_wander_state()
scr_check_for_player();
if (point_distance(x, y, targetx, targety)) {
    var dir = point_direction(x, y, targetx, targety);
    var hspd = lengthdir_x(move_speed, dir);
    var vspd = lengthdir_y(move_speed, dir);
    if (hspd != 0) {
        image_xscale = sign(hspd);
    }
    phy_position_x += hspd;
    phy_position_y += vspd;
} 
