/// @description event_queue_check()
function event_queue_check() {
	var i;
	i=global.event_queue_top
	if(global.event_queue_enabled[i]==false)return -1;
	else
	{
	    create_jq(global.event_queue_timeline[i])
	    global.event_queue_top++
	    if(global.event_queue_top>=100)global.event_queue_top=0
	    return 1;
	}



}
