/// @description battleground_reset()
function battleground_reset() 
{
	var i;
	for(i=10;i<16;i++)
	{
	    bks_reset(i)
	}
	for(i=0;i<384;i++)
	{
	    actors_reset(i)
	}
	for(i=0;i<2;i++)//actor[i]=i号机体 actor[i+2]=i号机体原位摄像机定位点
	{   
	    if(wid[i]>=0)
	    {
	        wid_mz[i]=workout_mzl(wid[i],mrid[i],mrid[!i])
	        if(wid[!i]==-3)wid_mz[i]/=2
	    }
	    rid=global.mrobo_id[mrid[i]]
		if(sprite_exists(global.robo_spr_spine[rid]))
		{
			actors_sprite[i]=global.robo_spr_spine[rid]
			actors_skeleton_animation[i]="stand"
		}
		else
		{
			actors_sprite[i]=global.robo_spr_stand[rid]
		}
	    actors_image[i]=0
	    actors_image_speed[i]=1
	    actors_x[i]=3840/2-640+288
	    if(i==0)actors_x[i]=3840/2+640-288
	    actors_y[i]=1268
	    actors_xs[i]=0.75
	    if(i==1)actors_xs[i]=-0.75
	    actors_ys[i]=0.75
	    actors_x[i+2]=1920-640
	    actors_y[i+2]=2160-1280
		if(actors_now==i)actors_alpha[i]=0
	}
	bk_speed=0
	bk_speed_offset=0
	bk_speed_target=0
	with(fsq_father)instance_destroy();
	flag_UI=true
	var lid=layer_get_id("battleground_seq_layer")
	var lsarray=layer_get_all_elements(lid);
	for(var i=0;i<array_length(lid);i++)
	{
		if(layer_get_element_type(lsarray[i])==layerelementtype_sequence)
		{
			sequence_destroy(lsarray[i])
		}
	}
}
