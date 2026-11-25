if(mode==0||mode==1)
{
    if(mrid[0]>=0)pid=global.mrobo_pliot[mrid[0]]
    else instance_destroy()
    var ap,lvx;
    ap=1
    if(mrid[1]>=0)
    {
        lvx=global.pliot_lv[global.mrobo_pliot[mrid[1]]]-global.pliot_lv[global.mrobo_pliot[mrid[0]]]
        if(lvx>=0)ap+=0.3*min(10,lvx)
        else if(lvx==-1)ap=0.7
        else if(lvx==-2)ap=0.5
        else if(lvx==-3)ap=0.35
        else if(lvx==-4)ap=0.2
        else if(lvx==-5)ap=0.1
        else if(lvx==-6)ap=0.05
        else ap=0.02
        if(find_buff(mrid[0],13))exp_blv*=2
        if(find_buff(mrid[0],11))money_blv*=2
        if(global.mrobo_hp[mrid[1]]>0)
        {
            exp_get=exp_blv*global.robo_exp_value[global.mrobo_id[mrid[1]]]*ap*0.1
            money_get=0
            //未杀敌气力
            global.mrobo_pliot_ql[mrid[0]]+=1
        }    
        else
        {
            exp_get=exp_blv*global.robo_exp_value[global.mrobo_id[mrid[1]]]*ap
            money_get=money_blv*global.robo_value[global.mrobo_id[mrid[1]]]
            //杀敌气力
            global.mrobo_pliot_ql[mrid[0]]+=4
            for(k=0;k<256;k++)
            {
                if(global.mrobo_id[k]>=0)global.mrobo_pliot_ql[k]+=1
            }
            //击坠数
            pid=global.mrobo_pliot[mrid[0]]
            global.pliot_kill[pid]++
            //获得芯片
            for(i=0;i<4;i++)
            {
                equip_get[i]=global.mrobo_equip[mrid[1],i]
            }
            mrobo_reset_single(mrid[1]) 
        }
    }
    pid=global.mrobo_pliot[mrid[0]]
    //偷钱
    for(j=0;j<10;j++)
    {
        if(global.pliot_perk[pid,j]>=0)
        {
            peid=global.pliot_perk[pid,j]
            if(script_exists(global.perk_battle_end_script[peid]))
            {
                script_execute(global.perk_battle_end_script[peid],mrid[0],mrid[1],global.pliot_perk_lv[pid,j],-1)
            }
        }
    }
}
if(global.mrobo_pliot_npc[mrid[0]])exp_get=0//npc不会获得经验
global.pliot_exp[pid]+=exp_get
if(global.pliot_exp[pid]>=500)
{
    lv_prim=global.pliot_lv[pid]
    lvup=true
    while(global.pliot_exp[pid]>=500)
    {
        global.pliot_exp[pid]-=500
        pliot_lvup(pid)
    }
}
for(j=0;j<10;j++)
{
    rid=global.mrobo_id[mrid[0]]
    lspid=global.mrobo_sub_pliot[mrid[0],j]
    if(lspid>=0)
    {
        global.pliot_exp[lspid]+=exp_get
        if(global.pliot_exp[lspid]>=500)
        {
            /*lv_prim=global.pliot_lv[lspid]
            lvup=true*/
            while(global.pliot_exp[lspid]>=500)
            {
                global.pliot_exp[lspid]-=500
                pliot_lvup(lspid)
            }
        }
    }
}
global.money+=money_get
//获得芯片
for(i=0;i<40;i++)
{
    if(equip_get[i]>=0)
    {
        global.equip_num[equip_get[i]]++
        //show_message("equip_get["+string(i)+"]="+string(equip_get[i]))
        flag_equip_get=true
    }
}
if(lvup)audio_play_sound(ME02_jingle07,1,0)       
else audio_play_sound(ME01_jingle06,1,0)     
//可以开始绘制了
drawing=true
cold=false

/* */
/*  */
