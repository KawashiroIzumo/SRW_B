/// @description mrobo_get_wep(mrid,wid)
/// @param mrid
/// @param wid
function mrobo_get_wep(argument0, argument1) {
	var i;
	for(i=0;i<10;i++)
	{
	    if(global.mrobo_wep[argument0,i]==argument1)
	    return -1;
	}
	for(i=0;i<10;i++)
	{
	    if(global.mrobo_wep[argument0,i]<0)
	    {
	        global.mrobo_wep[argument0,i]=argument1
	        global.mrobo_wep_bullet[argument0,i]=global.wep_bullet[argument1]
	        global.mrobo_wep_enabled[argument0,1]=1
	        return i;
	    }
	}




}
