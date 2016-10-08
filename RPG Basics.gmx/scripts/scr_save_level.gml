//scr_load_level(level_name)
var filename = argument[0];

var file = file_text_open_write(filename);
var room_string = ds_grid_write(obj_level.grid);
file_text_write_string(file, room_string);
file_text_close(file);

