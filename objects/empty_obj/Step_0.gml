/// @description Insert description here
// You can write your code in this editor
if(timeline_exists(timeline_index))
{
	//快进
	if(keyboard_check(vk_space))
	{
		room_speed=120
		with(DHK)
		{
			if(object_index!=battle_qr)
			{
				if(flag_menu=false&&cold==false&&object_index!=team_set_gui)instance_destroy()
			}
		}
	}
	else room_speed=60
}