var flag;
flag=false
a=mrobo_find_pliot(17)
if(a<0)
{
    instance_destroy()
}
else if(global.mrobo_hp[a]<global.mrobo_hpm[a])
{
    flag=true
}

if(flag)
{
    event_queue_add(stage03_2)
    instance_destroy()
}
else alarm[0]=10

