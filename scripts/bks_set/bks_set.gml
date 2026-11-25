/// @description bks_set(x,y)
/// @param x
/// @param y
function bks_set(argument0, argument1) 
{
	var i,j,k,is_fly,mriid;
	for(j=0;j<16;j++)
	{
		bks[j]=noone
	    bks_reset(j)
	}
	//if(sprite_exists(bks[2]))show_message("1="+sprite_get_name(bks[2]))
	i=mapid;
	j=global.map_dtype[i,argument1*100+argument0]
	if(i<0||j<0)return -1;
	for(k=0;k<256;k++)
	{
		if(global.mrobo_x[k]==argument0&&global.mrobo_y[k]==argument1)
		{
			mriid=k
			break;
		}
	}
	var qtext=global.robo_name[global.mrobo_id[mriid]]
	is_fly=global.mrobo_fly[mriid]
	if(!is_fly)qtext+="不"
	qtext+="处于飞行状态"
	//show_message(qtext)
	script_execute(global.map_bks_script[i],i,is_fly)
	script_execute(global.dtype_bks_script[j],j,is_fly)
	//if(sprite_exists(bks[2]))show_message("2="+sprite_get_name(bks[2]))
	i=actors_now
	actors_alpha[i]=0
	actors_alpha[!i]=1
}
