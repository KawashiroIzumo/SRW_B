/// @description event_queue_add(timeline)
/// @param timeline
function event_queue_add(argument0) {
	var i;
	i=global.event_queue_end
	if(global.event_queue_enabled[i])return -1;
	global.event_queue_timeline[i]=argument0
	global.event_queue_enabled[i]=true
	global.event_queue_end++
	if(global.event_queue_end>=100)global.event_queue_end=0



}
