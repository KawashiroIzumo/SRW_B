var rid;
if(mode==0)///在我方攻击的时候判定敌方行动
{
    for(i=0;i<2;i++)
    {
        if(global.mrobo_team[mrid[i]]!=0)
        {
            wid[i]=workout_attack_wep(mrid[i],true,mrid[!i])
            if(wid[i]==-1)
            {
                if(global.mrobo_hp[mrid[i]]/global.mrobo_hpm[global.mrobo_id[mrid[i]]]>=0.3)wid[i]=-1//呆
                else wid[i]=-3
            }
        }
    }
}
if(mode==1)///在敌方攻击的时候判定我方行动
{
    upside_down=!upside_down
    for(i=0;i<2;i++)
    {
        if(global.mrobo_team[mrid[i]]==0)
        {
            wid[i]=workout_attack_wep(mrid[i],true,mrid[!i])
            if(wid[i]==-1)
            {
                if(global.mrobo_hp[mrid[i]]/global.robo_hp[global.mrobo_id[mrid[i]]]>=0.5)wid[i]=-2
                else wid[i]=-3
            }
        }
    }
}
battlecam_x=1920
battlecam_y=1080
//决定背景
i=0
if(upside_down)i=!i
actors_now=i
battleground_reset()
//show_message("i="+string(i)+"\n mode="+string(mode)+"\n upside_down="+string(upside_down))
bks_set(global.mrobo_x[mrid[i]],global.mrobo_y[mrid[i]])
//show_message("初始化完成，是"+global.robo_name[ global.mrobo_id[mrid[i]]]+"先攻")
ondrawing=true

