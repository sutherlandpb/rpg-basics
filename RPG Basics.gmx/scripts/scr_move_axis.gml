///scr_move_axis
var dir = point_direction(0, 0, xaxis, yaxis);
var hspd = lengthdir_x(move_speed, dir);
var vspd = lengthdir_y(move_speed, dir);
if (hspd != 0) {
    image_xscale = sign(hspd);
}
phy_position_x += hspd;
phy_position_y += vspd;

