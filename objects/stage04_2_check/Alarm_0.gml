flag=0
var mrid=mrobo_find_robo(2);
if(mrid>=0)
{
	if(global.mrobo_x[mrid]>=29&&global.mrobo_E[mrid])
	{
		flag++
	}
}
mrid=mrobo_find_robo(11);
if(mrid>=0)
{
	if(global.mrobo_x[mrid]>=29&&global.mrobo_E[mrid])
	{
		flag++
	}
}
if(flag>=2)
{
    event_queue_add(stage04_2)
    instance_destroy()
}
else alarm[0]=15

