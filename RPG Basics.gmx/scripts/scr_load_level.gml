//scr_load_level(level_name)
var filename = argument[0];

ini_open(filename);
var room_string = ini_read_string("level", "grid", "");
ini_close();
if (instance_exists(obj_level_editor)) {
    ds_grid_read(obj_level_editor.grid, room_string);
} else if (instance_exists(obj_level)) {
    ds_grid_read(obj_level.grid, room_string);
}

