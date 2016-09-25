///scr_move_state
movement = MOVE;
var animation_speed = .2;
scr_get_input();

if (obj_input.dash_key && obj_player_stats.stamina >= DASH_COST) {
    obj_player_stats.stamina -= DASH_COST;
    obj_player_stats.alarm[0] = room_speed / 4;    
    state = scr_move_dash_state;
    alarm[0] = room_speed/5;
}

if (obj_input.attack_key) {
    image_index = 0;
    state = scr_attack_state;
}

if (obj_input.show_controls_key) {
    obj_input.show_controls_key = 0;
    obj_player_stats.onscreen_controls = !obj_player_stats.onscreen_controls;
}

if (obj_input.swap_key && obj_player_stats.level >= 5) {
    var nearest_weapon = instance_nearest(x, y, obj_weapon_item);
    if (place_meeting(x, y + 4, nearest_weapon)) {
        scr_swap_weapons(nearest_weapon);           
    } else {
        //cycle through the weapons we have
        var curr_weapon = obj_player_stats.current_weapon
        do {
            if (curr_weapon >= 2) {
                curr_weapon = 0;
            } else {
                curr_weapon++;
            }
        } until (obj_player_stats.has_weapon[curr_weapon]);
        scr_select_weapon(curr_weapon);        
        
    }
    
}

if (obj_input.spell_key && obj_player_stats.mana >= SPELL_COST) {
    obj_player_stats.mana -= SPELL_COST;
    var p = instance_create(x, y, obj_projectile);    
    var xforce = lengthdir_x(15, face * 90);
    var yforce = lengthdir_y(15, face * 90);
    p.creator = id;
    with(p) {
        
        //yeah my sprite faces left, it should face right
        if (xforce != 0) {
            image_xscale = sign(xforce);
        } else if (yforce != 0) {
            image_angle = 90;
            image_yscale = sign(yforce);       
        }
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

scr_move_if_possible(player_horizontal_speed, player_vertical_speed, self)

// control the sprite
image_speed = sign(len) * animation_speed;
if (len == 0) {
    image_speed = 0;
    image_index = 0;
} else {
    image_speed = animation_speed;
}

