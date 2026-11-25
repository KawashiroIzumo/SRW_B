flag=false
with(flagobj_deadrobot)
{
    if(mrobo_team==0&&mrobo_id==49)
    {
        other.flag=true
        //show_message("确实检测到了爆炸的卢本伟")
        break
    }
}
if(flag)
{
    //show_message("确实收到了flag")
    event_queue_add(SB02_FAIL2)
    instance_destroy()
}
else alarm[0]=15

