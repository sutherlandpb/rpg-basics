//scr_enemy_stall_state()
movement = IDLE;
if (alarm[1] <= 0) {
    state = scr_enemy_idle_state;
}

