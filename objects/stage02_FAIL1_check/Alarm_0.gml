var flag;
flag=true
for(i=0;i<256;i++)
{
    if(global.mrobo_id[i]>=0&&global.mrobo_team[i]==0)
    {
        flag=false
        break
    }
}
if(flag&&instance_exists(stage02_0_check)==false)
{
    event_queue_add(stage02_FAIL1)
    instance_destroy()
}
else alarm[0]=15

