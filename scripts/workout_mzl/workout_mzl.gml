/// @description workout_mzl(wid,mrid,tar_mrid)
/// @param wid
/// @param mrid
/// @param tar_mrid
function workout_mzl(argument0, argument1, argument2) {
	var num,pid,rid,mzl,hbl,mzl2,gz,j,dtid;
	num=50;
	pid=global.mrobo_pliot[argument1]
	rid=global.mrobo_id[argument1]
	//基本命中率=(机师命中值÷2+机体照准值)×机体地形适应+特殊技能效果+武器命中率补正值
	mzl=global.pliot_aim[pid]/2+global.mrobo_ab[argument1]+global.wep_aim[argument0]
	for(j=0;j<10;j++)
	{
	    if(global.pliot_perk[pid,j]==0||global.pliot_perk[pid,j]==1||global.pliot_perk[pid,j]==15)
	    {
	        if(global.pliot_perk_lv[pid,j]>0)mzl+=1*global.pliot_perk_lv[pid,j]
	    }
	    else if(global.pliot_perk[pid,j]==2)
	    {
	        if(global.pliot_perk_lv[pid,j]>0)mzl+=2*global.pliot_perk_lv[pid,j]
	    }
	    else if(global.pliot_perk[pid,j]==5)
	    {
	        if(global.pliot_perk_lv[pid,j]>0)mzl+=20
	    }
	}


	//基本回避率=(机师回避值÷2+机体运动型)×机体地形适应+特殊技能效果
	pid=global.mrobo_pliot[argument2]
	rid=global.mrobo_id[argument2]
	hbl=global.pliot_dodge[pid]/2+global.mrobo_ac[argument2]

	for(j=0;j<10;j++)
	{
	    if(global.pliot_perk[pid,j]==0||global.pliot_perk[pid,j]==1||global.pliot_perk[pid,j]==8||global.pliot_perk[pid,j]==15)
	    {
	        if(global.pliot_perk_lv[pid,j]>0)hbl+=1*global.pliot_perk_lv[pid,j]
	    }
	    else if(global.pliot_perk[pid,j]==5)
	    {
	        if(global.pliot_perk_lv[pid,j]>0)hbl+=20
	    }
		else if(global.pliot_perk[pid,j]==13&&global.wep_combat[argument0])
	    {
	        if(global.pliot_perk_lv[pid,j]>0)hbl+=global.pliot_perk_lv[pid,j]*3
	    }
	}

	//中间命中率=(基本命中率-基本回避率)×机体大小补正+距离修正+连续目标补正+补正值A-地形效果回避率
	dtid=global.map_dtype[mapid,global.mrobo_x[argument2]+global.mrobo_y[argument2]]
	gz=abs(global.mrobo_x[argument1]-global.mrobo_x[argument2])+abs(global.mrobo_y[argument1]-global.mrobo_y[argument2])
	mzl2=(mzl-hbl)+(5-gz)*3
	if(global.mrobo_fly[argument2]==false)mzl2-=global.dtype_ac[dtid]
	//最终命中率=(中间命中率+补正值B)×回避补正+追加技能效果
	num=50+mzl2
	if(find_buff(argument1,16)>=0)//冻结
	{
	    num-=20
	}
	if(find_buff(argument2,16)>=0)//对面有冻结
	{
	    num+=20
	}
	if(find_buff(argument1,3)>=0)//扰乱
	{
	    num*=0.5
	}
	if(find_buff(argument1,2)>=0)//必中
	{
	    num+=10000
	}
	if(find_buff(argument1,10)>=0)//集中
	{
	    num+=30
	}
	if(find_buff(argument2,10)>=0)//对面有集中
	{
	    num-=30
	}
	if(find_buff(argument2,5)>=0)//必闪
	{
	    num=0
	}
	return floor(num);



}
