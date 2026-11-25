/// @description 检测是否存在对话框
if(instance_exists(DHK))
{
    timeline_position--
}
else
{
    var i=target_mrid[noi],lvx=1,exp_blv=1,money_blv=1,ap=1;
    lvx=global.pliot_lv[global.mrobo_pliot[i]]-global.pliot_lv[global.mrobo_pliot[mrid]]
    if(lvx>=0)ap+=0.3*min(10,lvx)
    else if(lvx==-1)ap=0.7
    else if(lvx==-2)ap=0.5
    else if(lvx==-3)ap=0.35
    else if(lvx==-4)ap=0.2
    else if(lvx==-5)ap=0.1
    else if(lvx==-6)ap=0.05
    else ap=0.02
    if(find_buff(mrid,13))exp_blv*=2
    if(find_buff(mrid,11))money_blv*=2
    exp_blv*=0.7
    if(global.mrobo_hp[i]>0)
    {
        sum_exp+=floor(exp_blv*global.robo_exp_value[global.mrobo_id[i]]*ap*0.1)
    }    
    else
    {
        sum_exp+=floor(exp_blv*global.robo_exp_value[global.mrobo_id[i]]*ap)
        sum_money+=floor(money_blv*global.robo_value[global.mrobo_id[i]])
        //杀敌气力
        global.mrobo_pliot_ql[mrid]+=5
        //击坠数
        pid=global.mrobo_pliot[mrid]
        global.pliot_kill[pid]++
        //获得芯片
        for(j=0;j<4;j++)
        {
            if(global.mrobo_equip[i,j]>=0)
            {
                ls_equip_get[ls_equip_sum++]=global.mrobo_equip[i,j]
            }
        }
        mrobo_reset_single(i) 
    }
    noi++
}

