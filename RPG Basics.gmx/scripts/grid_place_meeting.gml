///grid_place_meeting(x, y)
var xx = argument[0];
var yy = argument[1];

//remember our position
var xp = x;
var yp = y;

//update the position for the bbox calc
x = xx;
y = yy;

//check for x meeting;
var x_meeting = (obj_level.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR) || 
                (obj_level.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR);

//check for y meeting
var y_meeting = (obj_level.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR) || 
                (obj_level.grid[# bbox_left div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR);
                
//move back
x = xp;
y = yp;

return x_meeting || y_meeting;
