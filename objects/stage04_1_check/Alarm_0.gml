flag=false
var mrid=mrobo_find_robo(40);
if(mrid<0)flag=true
else
{
	if(global.mrobo_hp[mrid]<=0)
	{
		flag=true
	}
}
if(flag)
{
    event_queue_add(stage04_1)
    instance_destroy()
}
else alarm[0]=15

