///scr_randomize_grid(height, width)
var height = argument[0];
var width = argument [1];

//randomize the level
randomize();

//create the controller in the center of the grid
var cx = width div 2;
var cy = height div 2;

//direction of controller (directions 0-3)
var cdir = irandom(3);

// the odds variable for changing direction
var odds = 1;

//create the level using 1000 steps
repeat (1000) {
    //place a floor tile at the controller position
    grid[# cx, cy] = FLOOR;
         
    //randomize direction
    if (irandom(odds) == odds) {
        cdir = irandom(3);        
    }
    //move the controller
    var xdir = lengthdir_x(1, cdir * 90);
    var ydir = lengthdir_y(1, cdir * 90);
    cx += xdir;
    cy += ydir;
    
    //make sure we don't move outside the grid
    cx = clamp(cx, 1, width - 2);
    cy = clamp(cy, 1, height - 2);
}
