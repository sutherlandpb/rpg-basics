///scr_draw_with_shadow(x, y, message)
var xx = argument[0];
var yy = argument[1];
var msg = argument[2];
var offset = 2;

draw_set_alpha(0.5);
draw_set_color(c_black);
draw_text(xx + offset, yy  + offset, msg); 
draw_set_alpha(1);
draw_set_color(c_white);
draw_text(xx, yy, msg); 

