///scr_move_state
movement = MOVE;
var animation_speed = .2;
scr_get_input();

if (obj_input.dash_key && obj_player_stats.stamina >= DASH_COST) {
    obj_player_stats.stamina -= DASH_COST;
    obj_player_stats.alarm[0] = room_speed * 2;    
    state = scr_move_dash_state;
    alarm[0] = room_speed/10;
}

if (obj_input.attack_key) {
    image_index = 0;
    state = scr_attack_state;
}
if (obj_input.swap_key && obj_player_stats.level >= 5) {
    var nearest_weapon = instance_nearest(x, y, obj_weapon_item);
    if (place_meeting(x, y + 4, nearest_weapon)) {
        scr_swap_weapons(nearest_weapon);           
    }
    
}

if (obj_input.spell_key && obj_player_stats.mana >= SPELL_COST) {
    obj_player_stats.mana -= SPELL_COST;
    var p = instance_create(x, y, obj_projectile);
    var xforce = lengthdir_x(20, face * 90);
    var yforce = lengthdir_y(20, face * 90);
    p.creator = id;
    with(p) {
        physics_apply_impulse(x, y, xforce, yforce);
    }    
}


//get direction
dir = point_direction(0,0, obj_input.xaxis, obj_input.yaxis);

//get the length 
if (obj_input.xaxis == 0 && obj_input.yaxis == 0) {
    len = 0;
} else {
    len = player_speed
    scr_get_face(dir);
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

