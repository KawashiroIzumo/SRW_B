flag=false
with(flagobj_deadrobot)
{
    if(mrobo_team==0&&mrobo_id==46)
    {
        other.flag=true
        //show_message("确实检测到了爆炸的醒哥")
        break
    }
}
if(flag)
{
    //show_message("确实收到了flag")
    event_queue_add(SB02_FAIL1)
    instance_destroy()
}
else alarm[0]=15

