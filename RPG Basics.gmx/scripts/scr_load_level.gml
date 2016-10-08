//scr_load_level(level_name)
var filename = argument[0];

var file = file_text_open_read(filename);
var room_string = file_text_read_string(file);
file_text_close(file);
ds_grid_read(obj_level.grid, room_string);
