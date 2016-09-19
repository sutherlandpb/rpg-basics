///scr_save_game(name)
var save_name = argument[0];
// player object exists
if (!instance_exists(obj_player_stats)) {
    exit;
}
//create save data structure
var save_data = ds_map_create();
with (obj_player_stats) {
    save_data[? "room"] = previous_room;
    save_data[? "x"] = player_xstart;
    save_data[? "y"] = player_ystart;
    save_data[? "hp"] = hp;
    save_data[? "maxhp"] = maxhp;
    save_data[? "stamina"] = stamina;
    save_data[? "maxstamina"] = maxstamina;
    save_data[? "mana"] = mana;
    save_data[? "maxmana"] = maxmana;
    save_data[? "expr"] = expr;
    save_data[? "maxexpr"] = maxexpr;
    save_data[? "level"] = level;
    save_data[? "attack"] = attack;
}

var save_string = json_encode(save_data);
ds_map_destroy(save_data);
save_string = base64_encode(save_string);
var file = file_text_open_write(working_directory + save_name + ".txt");
file_text_write_string(file, save_string);
file_text_close(file);



