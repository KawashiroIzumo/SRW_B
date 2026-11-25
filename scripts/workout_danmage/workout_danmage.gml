/// @description workout_danmage(wid,mrid,tar_mrid)
/// @param wid
/// @param mrid
/// @param tar_mrid
function workout_danmage(argument0, argument1, argument2) {
	var num,pid,rid,mzl,hbl,gz,a,j,ice;
	num=50;

	//基本攻击力=武器攻击力*(气力+格斗/射击)*武器地形适应性补正*机体/机师特殊能力*体型差补正/200
	pid=global.mrobo_pliot[argument1]
	rid=global.mrobo_id[argument1]
	if(global.wep_combat[argument0])
	    mzl=(global.pliot_combat[pid]+global.mrobo_pliot_ql[argument1])
	else 
	    mzl=(global.pliot_shoot[pid]+global.mrobo_pliot_ql[argument1])
	ice=false
	if(string_pos("冰",global.wep_name[argument0]))ice=true
	if(string_pos("雪",global.wep_name[argument0]))ice=true
	if(string_pos("冷",global.wep_name[argument0]))ice=true
	if(string_pos("冻",global.wep_name[argument0]))ice=true
	if(pid>=0)
	{
	    for(j=0;j<10;j++)
	    {
	        if(global.pliot_perk[pid,j]==6)
	        {
	            if(ice)mzl*=1.09
	        }
	        else if(global.pliot_perk[pid,j]==17)
	        {
	            if(global.initiactive)mzl*=1.0+0.05*(global.pliot_perk_lv[pid,j])
	        }
	        else if(global.pliot_perk[pid,j]==8)
	        {
	            mzl*=1.0+0.02*(global.pliot_perk_lv[pid,j])
	        }
	        else if(global.pliot_perk[pid,j]==9)
	        {
	            mzl*=1.0+0.05*(global.pliot_perk_lv[pid,j]+1)*(1-(global.mrobo_hp[argument1]/global.mrobo_hpm[argument1]))
	        }
	    }
	}
    
	//乘以武器改造倍率
	mzl*=(global.wep_atk[argument0]+global.mrobo_wep_kai[argument1]*150)/200

	//基本防御力=装甲*(气力+防御)*机体地形适应性补正*机体/机师特殊能力*体型差补正/200
	pid=global.mrobo_pliot[argument2]
	rid=global.mrobo_id[argument2]
	hbl=(global.pliot_shoot[pid]+global.mrobo_pliot_ql[argument2])*global.mrobo_def[argument2]/200

	dtid=global.map_dtype[mapid,global.mrobo_x[argument2]+global.mrobo_y[argument2]]
	if(global.mrobo_fly[argument2]==false)hbl*=(1+global.dtype_def[dtid]*0.01)
	for(j=0;j<10;j++)
	{
	    if(global.pliot_perk[pid,j]==3)
	    {
	        hbl*=(1+global.pliot_perk_lv[pid,j]*0.02)
	    }
	    else if(global.pliot_perk[pid,j]==9)
	    {
	        hbl*=1.0+0.05*(global.pliot_perk_lv[pid,j]+1)*(1-(global.mrobo_hp[argument1]/global.mrobo_hpm[argument1]))
			//show_message("计算底力后，防御力提升到了"+string(hbl))
	    }
		else if(global.pliot_perk[pid,j]==17)
	    {
	        if(global.initiactive)
			{
				hbl*=1.0+0.04*(global.pliot_perk_lv[pid,j])//被先攻
				//show_message("计算警察官后，防御力提升到了"+string(hbl))
			}
	    }
	}
	//最终伤害=基本攻击力-基本防御力
	num=mzl-hbl
	//show_message("攻击力"+string(mzl)+"   防御力"+string(hbl)+"#基础伤害为"+string(num))
	//加上铁壁
	a=find_buff(argument2,6)
	if(a>=0)
	{
	    num*=0.25
	}
	//加上分析
	a=find_buff(argument1,12)
	if(a>=0)
	{
	    num*=0.9
	}
	a=find_buff(argument2,12)
	if(a>=0)
	{
	    num*=1.1
	}
	//加上热血
	a=find_buff(argument1,0)
	if(a>=0)
	{
	    num*=2
	}
	//若没有热血，开始寻找魂
	else
	{
	    a=find_buff(argument1,1)
	    if(a>=0)
	    {
	        num*=2.5
	    }
	}
	//加上不屈
	a=find_buff(argument2,14)
	if(a>=0)
	{
	    num=10
	}
	//剑仙
	pid=global.mrobo_pliot[argument1]
	if(pid>=0)
	{
		for(j=0;j<10;j++)
	    {
			if(global.pliot_perk[pid,j]==13)
		    {
		        num+=500
		    }
		}
	}
	//最后 素色云界旗
	pid=global.mrobo_pliot[argument2]
	if(pid>=0)
	{
	    for(j=0;j<10;j++)
	    {
			if(global.pliot_perk[pid,j]==14)
	        {
	            num*=0.1	
	        }
		}
	}
	if(num<10)num=10
	return floor(num);



}
