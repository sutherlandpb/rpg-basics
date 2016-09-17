///scr_enemy_chase_state()
scr_check_for_player();
phy_position_x += sign(targetx - x) * move_speed;
phy_position_y += sign(targety - y) * move_speed; 
