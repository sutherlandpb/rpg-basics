///scr_select_tileset(set_num)

switch(argument[0]) {
    case 0 :
        wall_tileset = bg_wall_tiles;
        floor_tile = bg_tile;
        break;
    case 1 : 
        wall_tileset = bg_wall_red;
        floor_tile = bg_tile_red;
        break;
    case 2 : 
        wall_tileset = bg_wall_gray;
        floor_tile = bg_tile_grass;
        break;
    case 3 : 
        wall_tileset = bg_wall_wood;
        floor_tile = bg_tile_grass;
        break;        
    
}

