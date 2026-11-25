/// @description create_jq(jindex)
/// @param jindex
function create_jq(argument0) {
	var a;
	a=instance_create(0,0,empty_obj)
	a.timeline_index=argument0
	a.timeline_running=true
	a.timeline_loop=false
	return a;



}
