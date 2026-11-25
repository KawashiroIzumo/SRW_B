// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dbks00_normalground(j,is_fly)
{
	if(sprite_exists(global.dtype_sky[j]))
	{
		bks[0]=global.dtype_sky[j]
		bks_xspeed_blv[0]=0
	}
	if(sprite_exists(global.dtype_far[j])&&is_fly==false)
	{
	    bks[2]=global.dtype_far[j]
		bks_xspeed_blv[2]=0.5
		bks_y[2]=ground_height-784
	}
	if(sprite_exists(global.dtype_land[j])&&is_fly==false)
	{
		//show_message("因为不处于飞行状态，绘制地表")
		bks[4]=global.dtype_land[j]
		//show_message(sprite_get_name(global.dtype_land[j]))
		bks_y[4]=ground_height-784
	}
	else
	{
		//bks[4]=noone
	}
}