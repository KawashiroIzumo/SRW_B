/// @description actors_copy(aid,tarid)
/// @param aid
/// @param tarid
function actors_copy(argument0, argument1) {
	var aid,tarid;
	aid=argument0
	tarid=argument1
	actors_reset(tarid)
	    actors_sprite[tarid]=actors_sprite[aid]
	    actors_image[tarid]=actors_image[aid]
	    actors_image_speed[tarid]=actors_image_speed[aid]
	    actors_x[tarid]=actors_x[aid]
	    actors_follow[tarid]=actors_follow[aid]
	    actors_y[tarid]=actors_y[aid]
	    actors_alpha[tarid]=actors_alpha[aid]
	    actors_rotate[tarid]=actors_rotate[aid]
	    actors_rotate_speed[tarid]=actors_rotate_speed[aid]
	    actors_colora[tarid]=actors_colora[aid]
	    actors_xs[tarid]=actors_xs[aid]
	    actors_ys[tarid]=actors_ys[aid]
	    actors_grow[tarid]=actors_grow[aid]
	    actors_speed[tarid]=actors_speed[aid]
	    actors_gravity[tarid]=actors_gravity[aid]
	    actors_gravity_direction[tarid]=actors_gravity_direction[aid]
	    actors_direction[tarid]=actors_direction[aid]
	    actors_disappear[tarid]=actors_disappear[aid]
	    actors_blend[tarid]=actors_blend[aid]
	return tarid



}
