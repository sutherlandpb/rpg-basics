//scr_knockback_if_possible(xforce, yforce, obj)
// moves the object passed if there are no collisions
var xforce = argument[0];
var yforce = argument[1];
var obj = argument[2];

with(obj) {
    if (room == rm_random) {
        if (!grid_place_meeting(phy_position_x + xforce, phy_position_y + yforce)) {
            physics_apply_impulse(x, y, xforce, yforce);
        }
    } else {    
        physics_apply_impulse(x, y, xforce, yforce);
    }
}

