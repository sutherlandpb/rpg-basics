//scr_add_exp(amount)

with (obj_player_stats) {
    expr += argument[0];
    if (expr >= maxexpr) {
        level += 1;
        expr = expr - maxexpr;
        maxexpr = round(maxexpr * 1.75);
        maxhp += 2;
        hp = maxhp;
        maxstamina +=2;
        stamina = maxstamina;
        attack += 1;     
        maxmana += 1;
        mana = maxmana;
    }    
}
