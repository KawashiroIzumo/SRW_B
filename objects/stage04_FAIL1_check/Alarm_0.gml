flag=false
with(flagobj_deadrobot)
{
    if(mrobo_team==0)
    {
		if(mrobo_pliot==2||mrobo_pliot==0||mrobo_pliot==3||mrobo_pliot==5||mrobo_pliot==13)
        other.flag=true
        //show_message("确实检测到了爆炸的我方机体")
        break
    }
}
if(flag)
{
    //show_message("确实收到了flag")
    event_queue_add(stage04_FAIL1)
    instance_destroy()
}
else alarm[0]=15

