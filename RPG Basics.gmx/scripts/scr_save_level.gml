///scr_save_level(level_name, grid)
var filename = argument[0];
var grid = argument[1];

ini_open(filename);
ini_write_string("level", "grid", ds_grid_write(grid));
ini_close();

