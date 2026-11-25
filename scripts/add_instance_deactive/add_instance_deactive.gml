// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_instance_deactive(notme)
{
	instance_deactivate_all(notme)
	instance_activate_object(mouse_effect_creator)
	instance_activate_object(mouse_effect)
}