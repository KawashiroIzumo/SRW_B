/// @description Insert description here
// You can write your code in this editor
var mx=device_mouse_x_to_gui(0),my=device_mouse_y_to_gui(0)
if(mouse_check_button_pressed(mb_left))
{
	instance_create_depth(mx,my,depth,mouse_effect)
}