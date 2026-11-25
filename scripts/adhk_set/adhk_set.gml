/// @description adhk_set(pid,k,tar)
/// @param pid
/// @param k
/// @param tar
function adhk_set(argument0, argument1, argument2) {
	var pid=argument0,k=argument1,tar=argument2;
	tar.actors_dhk_head=global.pliot_wep_head[pid,k]
	tar.actors_dhk_face=global.pliot_wep_face[pid,k]
	tar.actors_dhk_text=global.pliot_wep_name[pid,k]
	tar.actors_dhk_text+="：#"+global.pliot_wep_text[pid,k]
	return tar;



}
