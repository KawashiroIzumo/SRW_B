/// @description base_robo_change(basenumber,newid)
/// @param basenumber
/// @param newid
function base_robo_change(argument0, argument1) {
	var a,b,j,rid;
	b=argument0
	rid=argument1
	a=global.base_rid[b]
	global.base_rid[b]=rid
	for(j=0;j<10;j++)
	{
	    if(global.base_wep[b,j]>=0)
	    {
	        if(global.base_wep_extra[b,j])
	        {
	            global.wep_base_sum[global.base_wep[b,j]]++
	        }
	    }
	    global.base_wep[b,j]=global.robo_wep[rid,j]
	    global.base_wep_enabled[b,j]=global.robo_wep_enabled[rid,j]
	    if(global.base_wep[b,j]>=0)global.base_wep_extra[b,j]=false
	    else global.base_wep_extra[b,j]=true
	}



}
