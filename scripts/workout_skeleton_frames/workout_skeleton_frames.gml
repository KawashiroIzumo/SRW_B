// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function workout_skeleton_frames(lsspr,lsanim)
{
	if(sprite_exists(lsspr))return -1;
	var a=sprite_index,num=0;
	sprite_index=lsspr
	num=skeleton_animation_get_frames(lsanim)
	sprite_index=a
	return num;
}