/// @description actors_reset(aid)
/// @param aid
function actors_reset(argument0) 
{
	var aid;
	aid=argument0
	var lid=layer_get_id("battleground_seq_layer"),dep=-200;
	if(layer_exists(lid))dep=layer_get_depth(lid)
	var iflag=false;
	with(actors_object[aid])instance_destroy()
	
	actors_object[aid]=instance_create_depth(0,0,dep-aid,battle_actor_obj)
	with(actors_object[aid])
	{
		a_id=aid
	}
	actors_sprite[aid]=noone
	actors_skeleton_animation[aid]=""
	actors_combo[aid]=noone
	actors_combo_nj[aid]=0
	actors_image[aid]=0
	actors_image_speed[aid]=1
	actors_x[aid]=0
	actors_y[aid]=0
	actors_follow[aid]=false
	actors_alpha[aid]=1
	actors_rotate[aid]=0
	actors_rotate_speed[aid]=0
	actors_colora[aid]=c_white
	actors_xs[aid]=1
	actors_ys[aid]=1
	actors_grow[aid]=0
	actors_speed[aid]=0
	actors_gravity[aid]=0
	actors_direction[aid]=0
	actors_gravity_direction[aid]=0
	actors_disappear[aid]=0
	actors_blend[aid]=bm_normal
}
