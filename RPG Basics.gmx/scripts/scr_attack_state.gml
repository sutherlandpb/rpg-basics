///scr_attack_state
image_speed = .5;
movement = ATTACK;

if (image_index >= 3 && attacked == false) {
    var xx = 0; 
    var yy = 0;
    switch (face) {
        case DOWN : 
            xx = x;
            yy = y + 12;
            break;
        case UP : 
            xx = x;
            yy = y - 10;
            break;    
        case LEFT : 
            xx = x - 10;
            yy = y + 2;
            break;
        case RIGHT : 
            xx = x + 10;
            yy = y + 2;
            break;        
    }
    
    attacked = true;
    var damage = instance_create(xx, yy, obj_damage);    
    damage.creator = id;
    damage.damage = obj_player_stats.attack;
}

