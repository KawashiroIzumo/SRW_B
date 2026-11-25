var flag;
flag=true
for(i=0;i<256;i++)
{
    if(global.mrobo_id[i]>=0&&global.mrobo_team[i]==0&&global.mrobo_id[i]!=2&&global.mrobo_onship[i]==false)
    {
        flag=false
        break
    }
}
if(flag)
{
    event_queue_add(stage01_3_0)
    with(stage01_3_check2)instance_destroy()
    instance_destroy()    
}
else alarm[0]=15

