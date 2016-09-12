///scr_get_input
right_key = keyboard_check(vk_right) || keyboard_check(ord('D'));
left_key = keyboard_check(vk_left) || keyboard_check(ord('A'))
up_key = keyboard_check(vk_up) || keyboard_check(ord('W'));
down_key = keyboard_check(vk_down) || keyboard_check(ord('S'));
dash_key = keyboard_check_pressed(vk_space);
//get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

//check for gamepad input
if (xaxis == 0 && yaxis == 0 && gamepad_is_connected(0)) {
    //get the axis
    gamepad_set_axis_deadzone(0, .35);
    xaxis = gamepad_axis_value(0, gp_axislh);
    yaxis = gamepad_axis_value(0, gp_axislv);
    dash_key = gamepad_button_check_pressed(0, gp_face1);
}
