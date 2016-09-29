///scr_make_red_slime(x, y)
var xx = argument[0];
var yy = argument[1];
var slime = instance_create(xx, yy, obj_enemy_slime);
with(slime) {
    attack = 3;
    hp = 9;
    
    //reward values
    xp_reward = 3;
    bonusxp_chance = .05;
    mana_chance = .10;
    health_chance = .20;
    image_blend = c_red;
    end_color_display = c_red;
}

