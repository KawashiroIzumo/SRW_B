// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mbks00_colony(i,is_fly)
{
	bks[0]=global.map_bks_sky[i]
	bks_xspeed_blv[0]=0
	if(is_fly)
	{
		//show_message("因为处于飞行状态，绘制天空")
		bks[4]=bks01_cloud
		bks_xspeed_blv[4]=1
		bks_y[4]=ground_height-1280
	}
	else
	{
		bks[1]=global.map_bks_far[i]
		bks_xspeed_blv[1]=0.5
		bks_y[1]=ground_height-784
	}
}