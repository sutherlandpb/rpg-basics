///scr_add_walls(height, width)
var height = argument[0];
var width = argument[1];
//add walls if needed
for (var yy = 1; yy < height - 1; yy++) {
    for (var xx = 1; xx < width - 1; xx++) {   
        if (grid[# xx, yy] == FLOOR) {
            if (grid[# xx + 1, yy] != FLOOR){
                //right
                grid[# xx + 1, yy] = WALL;
            }
            if (grid[# xx - 1, yy] != FLOOR){
                //left
                grid[# xx - 1, yy] = WALL;
            }            
            if (grid[# xx, yy + 1] != FLOOR){
                //down
                grid[# xx, yy + 1] = WALL;
            }
            if (grid[# xx, yy - 1] != FLOOR){
                //up
                grid[# xx, yy - 1] = WALL;
            }
           
        }
    }
}
// remove single walls
for (var yy = 1; yy < height - 1; yy++) {
    for (var xx = 1; xx < width - 1; xx++) {
        if (grid[# xx, yy] == WALL 
                && grid[# xx + 1, yy] == FLOOR 
                && grid[# xx - 1, yy] == FLOOR             
                && grid[# xx, yy + 1] == FLOOR 
                && grid[# xx, yy - 1] == FLOOR) {
            grid[# xx, yy] = FLOOR;         
        }
    }
}

