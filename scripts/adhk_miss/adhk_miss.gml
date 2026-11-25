/// @description adhk_miss(pid,tar,mrid,vsmrid)
/// @param pid
/// @param tar
/// @param mrid
/// @param vsmrid
function adhk_miss(argument0, argument1, argument2, argument3) {
	var pid=argument0,tar=argument1,mrid=argument2,vsmrid=argument3,k;
	k=irandom_range(0,global.pliot_dodge_num[pid]-1)
	tar.actors_dhk_head=global.pliot_dodge_head[pid,k]
	tar.actors_dhk_face=global.pliot_dodge_face[pid,k]
	tar.actors_dhk_text=global.pliot_dodge_name[pid,k]
	if(tar.actors_dhk_text==global.pliot_name[pid])tar.actors_dhk_text=global.mrobo_pliot_c_name[mrid]
	tar.actors_dhk_text+="：#"+global.pliot_dodge_text[pid,k]
	return tar;



}
