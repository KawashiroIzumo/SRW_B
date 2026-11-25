var flag;
flag=false
    if(global.turn_num>=2)
    {
        flag=true
    }
if(flag)
{
    event_queue_add(SB01_1)
    instance_destroy()
}
else alarm[0]=15

