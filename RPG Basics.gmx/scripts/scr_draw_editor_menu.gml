///scr_draw_editor_menu
//960 - default window width
//540 - default window height



var button_width = display_get_gui_width() div 18;
var button_height = button_width;
var button_x;
var button_y;

draw_set_color(c_black); //Set the color to black for our background for the menu
draw_rectangle(0, 0, button_width * 1.5, display_get_gui_height(), false); //Draw our button


button_x[0] = button_width * .25;
button_y[0] = button_height * 2 ;
button_x[1] = button_x[0];
button_y[1] = button_y[0] + (button_height * 1.25);
button_x[2] = button_x[0];
button_y[2] = button_y[1] + (button_height * 1.25);
button_x[3] = button_x[0];
button_y[3] = button_y[2] + (button_height * 1.25);
button_x[4] = button_x[0];
button_y[4] = button_y[3] + (button_height * 1.25);

virtual_key_add(button_x[0], button_y[0], button_width, button_height, vk_numpad0);
virtual_key_add(button_x[1], button_y[1], button_width, button_height, vk_numpad1);
virtual_key_add(button_x[2], button_y[2], button_width, button_height, vk_numpad2);
virtual_key_add(button_x[3], button_y[3], button_width, button_height, vk_numpad3);
virtual_key_add(button_x[4], button_y[4], button_width, button_height, vk_numpad4);

draw_set_alpha(.5);
draw_set_color(c_gray); //Set the color to gray for our button
draw_rectangle(button_x[0], button_y[0], button_x[0] + button_width,button_y[0] + button_height, false); //Draw our button
draw_rectangle(button_x[1], button_y[1], button_x[1] + button_width,button_y[1] + button_height,false); //Draw our button
draw_rectangle(button_x[2], button_y[2], button_x[2] + button_width,button_y[2] + button_height,false); //Draw our button
draw_rectangle(button_x[3], button_y[3], button_x[3] + button_width,button_y[3] + button_height,false); //Draw our button
draw_rectangle(button_x[4], button_y[4], button_x[4] + button_width,button_y[4] + button_height,false); //Draw our button

draw_set_color(c_green); //Set the color to green for our selected button
draw_rectangle(button_x[current_tool-100], button_y[current_tool-100], button_x[current_tool-100] + button_width,button_y[current_tool-100] + button_height, false); //Draw our button




//now draw the icons
draw_set_alpha(1); //Reset the alpha
draw_background_stretched(floor_tile, button_x[0] + button_width * .25, button_y[0] + button_height * .25, button_width div 2, button_width div 2);
draw_sprite(current_enemy_sprite, image_index, button_x[1] + button_width div 2, button_y[1] + button_width div 2);
draw_sprite(spr_exit_door, image_index, button_x[2] + button_width div 2, button_y[2] + button_width div 2);
draw_sprite(spr_save, image_index, button_x[3] + button_width div 2, button_y[3] + button_width div 2);
draw_sprite(spr_open, image_index, button_x[4] + button_width div 2, button_y[4] + button_width div 2);


draw_set_color(c_white); //Reset the color
draw_set_halign(fa_left); //Reset the horizontal align



