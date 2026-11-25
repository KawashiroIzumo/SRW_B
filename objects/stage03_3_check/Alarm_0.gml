var flag;
flag=true
for(i=0;i<256;i++)
{
    if(global.mrobo_id[i]>=0&&global.mrobo_team[i]==1)
    {
        flag=false
        break
    }
}
if(flag)
{
    event_queue_add(stage03_3)
    instance_destroy()
}
else alarm[0]=15

