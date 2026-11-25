/// @description base_get_wep(basenum,wid)
/// @param basenum
/// @param wid
function base_get_wep(argument0, argument1) {
	var i;
	for(i=0;i<10;i++)
	{
	    if(global.base_wep[argument0,i]==argument1)
	    return -1;
	}
	for(i=0;i<10;i++)
	{
	    if(global.base_wep[argument0,i]<0)
	    {
	        global.base_wep[argument0,i]=argument1
	        global.base_wep_extra[argument0,i]=1
	        global.base_wep_enabled[argument0,1]=1
	        return i;
	    }
	}
	return -1;




}
