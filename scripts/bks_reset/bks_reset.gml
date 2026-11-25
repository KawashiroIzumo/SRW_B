/// @description bks_reset(bks_id)
/// @param bks_id
function bks_reset(argument0) 
{
	var a=argument0;
	bks[a]=noone
	bks_type[a]=0
	//0:天空型 背景棍
	//1:地面型 背景棍
	//2:可动型背景块
	bks_front[a]=false
	bks_alpha[a]=1
	bks_disappear[a]=0
	bks_x[a]=0
	bks_y[a]=0
	bks_speed[a]=0
	bks_xspeed_blv[a]=1
	bks_direction[a]=0
	info_qtext[a]=""
	info_right[a]=false
	info_ala[a]=-1
	return true;
}
