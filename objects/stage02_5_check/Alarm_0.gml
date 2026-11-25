var flag;
flag=false
i=mrobo_find_pliot(6)
    if(global.mrobo_hp[i]<2500)
    {
        flag=true
    }
if(flag)
{
    event_queue_add(stage02_5)
    instance_destroy()
}
else alarm[0]=15

