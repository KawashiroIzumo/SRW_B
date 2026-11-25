/// @description mrobo_find_pliot(rid)
/// @param rid
function mrobo_find_pliot(argument0) {
	var i;
	for(i=0;i<256;i+=1)
	{
	    if(global.mrobo_id[i]>=0&&global.mrobo_pliot[i]==argument0)return i;
	}
	return -1;



}
