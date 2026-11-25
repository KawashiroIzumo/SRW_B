/// @description mrobo_refrish(mrid)
/// @param mrid
function mrobo_refrish(argument0) {
	var i,mis,rid;
	mis=argument0
	if(global.mrobo_id[mis]<0)return -1
	rid=global.mrobo_id[mis]
	global.mrobo_hp[mis]=global.mrobo_hpm[mis]
	global.mrobo_en[mis]=global.mrobo_enm[mis]
	if(global.robo_place_go[rid,0])global.mrobo_fly[mis]=true
	for(i=0;i<40;i++)
	{
	    global.mrobo_buff[mis,i]=-1
	}
	for(i=0;i<10;i++)
	{
	    if(global.mrobo_wep[mis,i]>=0)
	    {
	        global.mrobo_wep_bullet[mis,i]=global.wep_bullet[global.mrobo_wep[mis,i]]
	    }
	    else global.mrobo_wep_bullet[mis,i]=-1
	}
	return i;



}
