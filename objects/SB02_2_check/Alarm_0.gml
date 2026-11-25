var flag;
flag=false
mrid=mrobo_find_robo(47)
if(mrid>=0)
{
	if(global.mrobo_hp[mrid]<=global.mrobo_hpm[mrid]*0.9)
	{
		flag=true
	}
}
if(instance_exists(spirit_choose_con))flag=false
else if(instance_exists(DHK))flag=false
else if(instance_exists(fw_drawer))flag=false
if(flag)
{
    event_queue_add(SB02_2)
    instance_destroy()
}
else alarm[0]=15

