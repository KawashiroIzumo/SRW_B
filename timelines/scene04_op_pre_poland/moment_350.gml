///@description 检测是否存在对话框/波澜哥退场`黑场出现
if(instance_exists(DHK))
{
    timeline_position--;
}
else
{
	with(talk_scene)
	{
		var i=0
		actor_sprite[i]=plo00_wavebro_run
	    actor_mirror[i]=0
		actor_combo[i]=noone
		actor_speed[i]=8
		actor_direction[i]=0
	
	
		i=56
	    actor_reset(i)
		actor_useing(i)
	    actor_sprite[i]=pcC_black
	    actor_alpha[i]=0
	    actor_disappear[i]=-0.02
	    actor_image_index[i]=0
	    actor_mirror[i]=false
	    actor_x[i]=0
	    actor_y[i]=0
	}
}