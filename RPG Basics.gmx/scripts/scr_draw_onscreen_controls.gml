///scr_draw_onscreen_controls

var button_width = 50;
var button_height = 50;
var button_x;
var button_y;
button_x[0] = 70;
button_y[0] = 370;
button_x[1] = button_x[0];
button_y[1] = button_y[0] + (button_height * 2);
button_x[2] = button_x[0] - button_height;
button_y[2] = button_y[0] + button_width;
button_x[3] = button_x[0] + button_height;
button_y[3] = button_y[0] + button_width;

button_x[4] = 800;
button_y[4] = button_y[0];
button_x[5] = button_x[4];
button_y[5] = button_y[4] + (button_height * 2);;
button_x[6] = button_x[4] - button_height;
button_y[6] = button_y[4] + button_width;
button_x[7] = button_x[4] + button_height;
button_y[7] = button_y[4] + button_width;

button_x[8] = ((button_x[4] - button_x[0]) / 2) - button_width ;
button_y[8] = button_y[4] + button_width;
button_x[9] =  ((button_x[4] - button_x[0]) / 2) + button_width ;
button_y[9] = button_y[4] + button_width;



virtual_key_add(button_x[0], button_y[0], button_width, button_height, vk_up);
virtual_key_add(button_x[1], button_y[1], button_width, button_height, vk_down);
virtual_key_add(button_x[2], button_y[2], button_width, button_height, vk_left);
virtual_key_add(button_x[3], button_y[3], button_width, button_height, vk_right);

virtual_key_add(button_x[4], button_y[4], button_width, button_height, vk_lcontrol);
virtual_key_add(button_x[5], button_y[5], button_width, button_height, vk_space);
virtual_key_add(button_x[6], button_y[6], button_width, button_height, vk_lalt);
virtual_key_add(button_x[7], button_y[7], button_width, button_height, vk_lshift);

virtual_key_add(button_x[8], button_y[8], button_width, button_height, vk_tab);
virtual_key_add(button_x[9], button_y[9], button_width, button_height, vk_escape);


draw_set_alpha(.5);
draw_set_color(c_gray); //Set the color to gray for our button
draw_rectangle(button_x[0], button_y[0], button_x[0] + button_width,button_y[0] + button_height, false); //Draw our button
draw_rectangle(button_x[1], button_y[1], button_x[1] + button_width,button_y[1] + button_height,false); //Draw our button
draw_rectangle(button_x[2], button_y[2], button_x[2] + button_width,button_y[2] + button_height,false); //Draw our button
draw_rectangle(button_x[3], button_y[3], button_x[3] + button_width,button_y[3] + button_height,false); //Draw our button

draw_rectangle(button_x[4], button_y[4], button_x[4] + button_width,button_y[4] + button_height, false); //Draw our button
draw_rectangle(button_x[5], button_y[5], button_x[5] + button_width,button_y[5] + button_height,false); //Draw our button
draw_rectangle(button_x[6], button_y[6], button_x[6] + button_width,button_y[6] + button_height,false); //Draw our button
draw_rectangle(button_x[7], button_y[7], button_x[7] + button_width,button_y[7] + button_height,false); //Draw our button

draw_rectangle(button_x[8], button_y[8], button_x[8] + button_width,button_y[8] + button_height,false); //Draw our button
draw_rectangle(button_x[9], button_y[9], button_x[9] + button_width,button_y[9] + button_height,false); //Draw our button


//Now we clean up our drawing
draw_set_alpha(1); //Reset the alpha
draw_set_color(c_white); //Reset the color
draw_set_halign(fa_left); //Reset the horizontal align



