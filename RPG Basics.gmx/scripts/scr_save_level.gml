///scr_save_level(level_name, grid, tileset)
var filename = argument[0];
var grid = argument[1];
var tileset = argument[2];

ini_open(filename);
ini_write_string("level", "grid", ds_grid_write(grid));
ini_write_real("level", "tileset", tileset);
ini_close();

