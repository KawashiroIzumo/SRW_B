flag=false
var mrid=mrobo_find_robo(52);
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
    event_queue_add(stage04_3_k)
    instance_destroy()
}
else alarm[0]=15

