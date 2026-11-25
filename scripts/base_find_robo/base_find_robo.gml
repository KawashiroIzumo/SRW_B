/// @description base_find_robo(rid)
/// @param rid
function base_find_robo(argument0) {
	for(i=0;i<100;i++)
	{
	    if(global.base_rid[i]==argument0)return i;
	}
	return -1



}
