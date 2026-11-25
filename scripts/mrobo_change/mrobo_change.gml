/// @description mrobo_change(mrid,newid)
/// @param mrid
/// @param newid
function mrobo_change(argument0, argument1) {
	var a,b,j,rid;
	b=argument0
	rid=argument1
	a=global.mrobo_id[b]
	global.mrobo_id[b]=rid
	for(j=0;j<10;j++)
	{
	    if((global.mrobo_wep[b,j]>=0&&global.robo_wep[rid,j]>=0)&&(global.wep_bullet[global.mrobo_wep[b,j]]!=global.wep_bullet[global.robo_wep[rid,j]]))
	    {
	        global.mrobo_wep_bullet[global.mrobo_wep[b,j]]=global.robo_bullet[global.robo_wep[rid,j]]
	    }
	    global.mrobo_wep[b,j]=global.robo_wep[rid,j]
	    global.mrobo_wep_enabled[b,j]=global.robo_wep_enabled[rid,j]
		global.mrobo_special[b,j]=global.robo_special[rid,j]
	}



}
