/// @description mrobo_find_pliot_name(c_name)
/// @param c_name
function mrobo_find_pliot_name(argument0) {
	var i;
	for(i=0;i<256;i+=1)
	{
	    if(global.mrobo_id[i]>=0&&global.mrobo_pliot_c_name[i]==argument0)return i;
	}
	return -1;



}
