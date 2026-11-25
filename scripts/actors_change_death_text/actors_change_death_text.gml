/// @description actors_change_death_text(pid,mrid,tmrid)
/// @param pid
/// @param mrid
/// @param tmrid
function actors_change_death_text(argument0, argument1, argument2) {
	var k,pid,mrid,tmrid;
	pid=argument0
	mrid=argument1
	tmrid=argument2
	    k=irandom_range(0,global.pliot_dead_num[pid]-1)
	    actors_dhk_head=global.pliot_dead_head[pid,k]
	    actors_dhk_face=global.pliot_dead_face[pid,k]
	    actors_dhk_text=global.pliot_dead_name[pid,k]+"：#"+global.pliot_dead_text[pid,k]
	return 0;



}
