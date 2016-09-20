//scr_enemy_idle_state()
movement = IDLE;
scr_check_for_player();

if (enemy_type == ENEMY_HAS_IDLE) {
    sprite_index = rest_sprite;
}
