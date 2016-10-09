///scr_draw_editor_menu
//960 - default window width
//540 - default window height
var button_width = display_get_gui_width() div 18;
var button_height = button_width;
var button_x;
var button_y;
button_x[0] = button_width * .25;
button_y[0] = button_height * 2 ;
button_x[1] = button_x[0];
button_y[1] = button_y[0] + (button_height * 1.25);
button_x[2] = button_x[0];
button_y[2] = button_y[1] + (button_height * 1.25);
button_x[3] = button_x[0];
button_y[3] = button_y[2] + (button_height * 1.25);


virtual_key_add(button_x[0], button_y[0], button_width, button_height, vk_up);
virtual_key_add(button_x[1], button_y[1], button_width, button_height, vk_down);
virtual_key_add(button_x[2], button_y[2], button_width, button_height, vk_left);
virtual_key_add(button_x[3], button_y[3], button_width, button_height, vk_right);

draw_set_alpha(.5);
draw_set_color(c_gray); //Set the color to gray for our button
draw_rectangle(button_x[0], button_y[0], button_x[0] + button_width,button_y[0] + button_height, false); //Draw our button
draw_rectangle(button_x[1], button_y[1], button_x[1] + button_width,button_y[1] + button_height,false); //Draw our button
draw_rectangle(button_x[2], button_y[2], button_x[2] + button_width,button_y[2] + button_height,false); //Draw our button
draw_rectangle(button_x[3], button_y[3], button_x[3] + button_width,button_y[3] + button_height,false); //Draw our button

//Now we clean up our drawing
draw_set_alpha(1); //Reset the alpha
draw_set_color(c_white); //Reset the color
draw_set_halign(fa_left); //Reset the horizontal align



