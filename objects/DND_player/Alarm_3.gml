/// @description 敌方回合结束，转到我方回合
global.bgm=global.roombgm
var cflag=false
for(i=0;i<256;i++)
{
    global.mrobo_E[i]=false
    if(global.mrobo_id[i]>=0&&global.mrobo_team[i]==0)//自然回复力
    {
        if(!cflag)
        {
            view_do_center_puz(0,global.mrobo_x[i],global.mrobo_y[i])
            cflag=true
        }
        rid=global.mrobo_id[i]
        for(j=0;j<40;j++)
        {
            sid=global.robo_special[rid,j]
            if(sid>=12&&sid>=15)
            {
                global.mrobo_en[i]+=global.mrobo_enm[i]*(0.1+(sid-12)*0.2)
                if(sid==15)global.mrobo_en[i]=global.mrobo_enm[i]
            }
            else if(sid>=16&&sid>=19)
            {
                global.mrobo_hp[i]+=global.mrobo_hpm[i]*(0.1+(sid-16)*0.2)
                if(sid==19)global.mrobo_hp[i]=global.mrobo_hpm[i]
            }
            
        }
        global.mrobo_en[i]+=5
        if(global.mrobo_onship[i])
        {
            mrobo_refrish(i)
        }
        rid=global.mrobo_id[i]
        for(k=-1;k<10;k++)
        {
            if(k==-1)pid=global.mrobo_pliot[i]
            else pid=global.mrobo_sub_pliot[i,k]
            if(pid>=0)
            {
                for(j=0;j<10;j++)
                {
                    peid=global.pliot_perk[pid,j]
                    if(peid>=0&&script_exists(global.perk_turn_script[peid]))
                    {
                        script_execute(global.perk_turn_script[peid],i,-1,global.pliot_perk_lv[pid,j],k)
                        if(k==-1)
                            if(global.mrobo_pliot_sp[i]>=global.pliot_sp[pid])global.mrobo_pliot_sp[i]=global.pliot_sp[pid]
                        else
                            if(i>=0&&k>=0&&pid>=0&&global.mrobo_sub_sp[i,k]>=global.pliot_sp[pid])global.mrobo_sub_sp[i,k]=global.pliot_sp[pid]                    
                    }
                }
            }
         }
         if(global.mrobo_en[i]>=global.mrobo_enm[i])
         global.mrobo_en[i]=global.mrobo_enm[i]
         if(global.mrobo_hp[i]>=global.mrobo_hpm[i])
         global.mrobo_hp[i]=global.mrobo_hpm[i]

    }
}
turn_type=0
turn_e_now=-1
with(camera)follow=true
with(empty_obj)instance_destroy()
cold=false
inchoose=false
///回合数计算
global.turn_num++//回合数
global.turn_sum++//总回合数
instance_create(0,0,pl_turn)

