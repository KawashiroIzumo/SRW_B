/// @description base_find_pliot(pid)
/// @param pid
function base_find_pliot(argument0) {
	for(i=0;i<100;i++)
	{
	    if(global.base_rid[i]>=0)
	    {
	        if(global.base_pliot[i]==argument0)return i;
	    }
	}
	return -1



}
