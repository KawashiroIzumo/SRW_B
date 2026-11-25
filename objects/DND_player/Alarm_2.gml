/// @description AI
var mrid;
mrid=turn_e_now
with(camera)follow=false
if(global.mrobo_ai[mrid]==0)
{
    //0=只会待机
    global.mrobo_E[mrid]=true
    alarm[1]=30
}
else if(global.mrobo_ai[mrid]==1)
{
    //1=突击犬
    var tmrid,thp,twepj,tstand;
    tmrid=-1
    twepj=-1
    tstand=1
    rid=global.mrobo_id[mrid]
    thp=16777215
    if(workout_can_atk(mrid,1))//站在原地能打人时，站在原地打人
    {
        //show_message("确认可以打到人")
        for(j=9;j>=0;j--)//从最高威力的武器开始数
        {
            wid=global.mrobo_wep[mrid,j]
            /*if(wid<0)show_message("武器"+string(j)+"为空气")
            else show_message("武器"+string(j)+"为"+global.wep_name[wid])*/
            if(wid>=0&&script_exists(global.wep_enable_ignore[wid]))
            {
                global.mrobo_wep_enabled[mrid,j]=script_execute(global.wep_enable_ignore[wid],mrid,wid)
            }
            
            if(wid>=0&&global.mrobo_wep_enabled[mrid,j])
            {
                //show_message("武器"+string(j)+"可以使用")
                if(workout_can_atk_wep(mrid,1,wid))//当前最高威力的武器可以打到人时
                {
                    //show_message("wid="+string(wid))
                    //show_message("武器"+string(j)+"可以打到人")
                    for(k=0;k<256;k++)
                    {
                        if(global.mrobo_team[k]==global.mrobo_team[mrid])continue
                        else if(global.mrobo_onship[k])continue
                        else
                        {
                            if(workout_can_atk_wep_target(mrid,1,wid,k))
                            {
                                //show_message("找到临时目标，目标为"+global.robo_name[global.mrobo_id[k]])
                                if(global.mrobo_hp[k]<thp)
                                {
                                    thp=global.mrobo_hp[k]
                                    tmrid=k
                                }
                            }
                        }
                    }
                }
                if(tmrid>=0)//找到目标
                {
                    //show_message("确定目标，目标为"+global.robo_name[global.mrobo_id[tmrid]])
                    twepj=j
                    break;
                }
                else
                {
                    //show_message("未找到目标")
                }
            }
        }
    }
    else if(mrobo_get_mov(mrid)>0)//若移动力>0
    {
    /*
        global.mrobo_E[mrid]=true
        alarm[1]=30
    }*/
        
        a=instance_create(0,0,moving_drawer)
        a.mrid=mrid
        a.mode=1
        a.mapid=mapid
        a.svx=__view_get( e__VW.XView, 0 )
        a.svy=__view_get( e__VW.YView, 0 )
    }
	else
	{
		global.mrobo_E[mrid]=true
        alarm[1]=30
	}
    if(tmrid>=0&&twepj>=0)//经过一通操作之后找到了
    {
		view_do_center_puz(0,global.mrobo_x[mrid],global.mrobo_y[mrid])
        a=instance_create(0,0,battle_qr)
        a.mode=1
        a.stand=tstand
        //show_message("stand="+string(stand))
        a.battle_dh=global.battle_dh
        a.wid[1]=global.mrobo_wep[mrid,twepj]
        a.mrid[1]=mrid
        a.mrid[0]=tmrid
        a.battle_dh=global.drawing
    }
}

/* */
/*  */
