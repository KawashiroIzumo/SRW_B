var flag;
flag=true
    a=mrobo_find_robo(2)
    if(a>=0)
    {
        flag=false
    }
if(flag)
{
    event_queue_add(stage03_FAIL1)
    instance_destroy()
}
else alarm[0]=15

