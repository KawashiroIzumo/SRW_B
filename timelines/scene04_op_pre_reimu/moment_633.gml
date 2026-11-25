///@description 灵梦离场
with(talk_scene)
{
	var i=0
	actor_sprite[i]=thca00_reimu_move
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