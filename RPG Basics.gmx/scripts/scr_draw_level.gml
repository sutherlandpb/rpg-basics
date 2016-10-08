///scr_draw_level(height, width)
var height = argument[0];
var width = argument[1];

//delete so you can redraw
tile_layer_delete(0);

//set the tileset
scr_select_tileset(current_tileset);

// draw the floor
for (var yy = 0; yy < height; yy++) {
    for (var xx = 0; xx < width; xx++) {
        if (grid[# xx, yy] == FLOOR) {
            tile_add(floor_tile, 0, 0, CELL_WIDTH, CELL_HEIGHT, xx * CELL_WIDTH, yy * CELL_HEIGHT, 0);             
            var odds = 20;   
            var ex = xx * CELL_WIDTH + CELL_WIDTH/2; 
            var ey = yy * CELL_HEIGHT + CELL_HEIGHT/2; 
        }        
    }
}        
// get tile sizez
var tw = CELL_WIDTH / 2;
var th = CELL_HEIGHT / 2;

// add the wall tiles
for (var yy = 0; yy < height * 2; yy++){
    for (var xx = 0; xx < width * 2; xx++) {
        if (grid[# xx div 2, yy div 2] == FLOOR) {
            // get tile x and y
            var tx = xx * tw;
            var ty = yy * th;            
            
            var right = grid[# (xx + 1) div 2, yy div 2] != FLOOR;
            var left = grid[# (xx - 1) div 2, yy div 2] != FLOOR;
            var top = grid[# xx div 2, (yy - 1) div 2] != FLOOR;
            var bottom = grid[# xx div 2, (yy + 1) div 2] != FLOOR;
            
            var top_right = grid[# (xx + 1) div 2, (yy - 1) div 2] != FLOOR;
            var top_left = grid[# (xx - 1) div 2, (yy - 1) div 2] != FLOOR;
            var bottom_right = grid[# (xx + 1) div 2, (yy + 1) div 2] != FLOOR;
            var bottom_left = grid[# (xx - 1) div 2, (yy + 1) div 2] != FLOOR;
            
            if (right) {
                if (bottom) {                     
                    tile_add(wall_tileset, tw * 4, th * 1, tw, th, tx+tw, ty, 0);
                } else if (top) {
                    if (top_right) {
                        tile_add(wall_tileset, tw * 4, th * 0, tw, th, tx+tw, ty-th, 0);                    
                    } else {
                        tile_add(wall_tileset, tw * 3, th * 0, tw, th, tx, ty-th, 0);
                    }
                    tile_add(wall_tileset, tw*0, th*1, tw, th, tx+tw, ty, 0);    
                } else {
                    tile_add(wall_tileset, tw * 0, th * 1, tw, th, tx+tw, ty, 0);
                }
            }
            
            if (left) {
                if (bottom) {
                    tile_add(wall_tileset, tw * 3, th * 1, tw, th, tx-tw, ty, 0);
                } else if (top) {
                    if (top_left) {
                        tile_add(wall_tileset, tw * 3, th * 0, tw, th, tx-tw, ty-th, 0);
                    } else {
                        tile_add(wall_tileset, tw * 4, th * 0, tw, th, tx, ty-th, 0);
                    }          
                    tile_add(wall_tileset, tw * 2, th * 1, tw, th, tx - tw, ty, 0);      
                } else {                
                    tile_add(wall_tileset, tw * 2, th * 1, tw, th, tx - tw, ty, 0);
                }
            }
            
            if (top) {
                if (!top_right) {
                    tile_add(wall_tileset, tw * 2, th * 2, tw, th, tx, ty-th, 0);
                } else if (!top_left) {
                    tile_add(wall_tileset, tw * 0, th * 2, tw, th, tx, ty-th, 0);
                 } else {
                    tile_add(wall_tileset, tw * 1, th * 2, tw, th, tx, ty-th, 0);
                }
                                
            }
            
            if (bottom) {
                if (!bottom_right) {
                    tile_add(wall_tileset, tw * 2, th * 0, tw, th, tx, ty, 0);
                } else if (!bottom_left) {
                    tile_add(wall_tileset, tw * 0, th * 0, tw, th, tx, ty, 0);
                 } else {
                    tile_add(wall_tileset, tw * 1, th * 0, tw, th, tx, ty, 0);
                }            
            }            
        }
    }
}
