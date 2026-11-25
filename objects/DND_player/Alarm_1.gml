var flag,i,rid,bx,by;
flag=false
if(event_queue_check()<0)//事件树中没有事件
{
    for(i=turn_e_now+1;i<256;i++)
    {
        if(global.mrobo_team[i]==1&&global.mrobo_E[i]=false)
        {
            turn_e_now=i
            flag=true
            break;
        }
    }
    if(flag)
    {
        rid=turn_e_now
        bx=global.mrobo_x[rid]*64+64
        by=global.mrobo_y[rid]*64+64
        view_do_center(0,bx,by)
        with(camera)follow=false
        alarm[2]=15
    }
    else//敌方已经全员行动完毕
    {
        alarm[3]=60
    }
}

