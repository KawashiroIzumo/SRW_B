 ///database_special()
function database_special() {
	//机体的特殊能力
	//-------------------------------------------
	for(i=0;i<100;i++)
	{
	    global.special_name[i]=""
	    global.special_text[i]="xx系#yy"
	    global.special_type[i]=0
	    //0=关键词系 1=护盾系
	    //2=觉醒系 3=Buff系

	    //护盾系部分
	    global.special_en[i]=5
	    global.special_dr[i]=600
		global.special_drp[i]=0//减伤比率
	    global.special_mzl[i]=100//触发概率
	    global.special_break[i]=false//是否像at力场一样会被击破
	    global.special_anti_beam_type[i]=2
	        //0=通吃 1=只抵挡光束 2=无法抵挡光束

	    //-特殊能力对机师特性的要求
	    for(j=0;j<10;j++)
	    {
	        global.special_xq_perk_id[i,j]=-1
	        global.special_xq_perk_lv[i,j]=-1
	    }
	    global.special_xq_perk_id[i,0]=0
	    global.special_xq_perk_lv[i,0]=1
	    //觉醒系部分
	    global.special_ql[i]=0//觉醒气力
	    global.special_change[i]=-1//觉醒换机
	    //觉醒 buff通用部分
	    global.special_atk[i]=0//武器攻击力上升
	    global.special_pliot_combat[i]=0//格斗
	    global.special_pliot_shoot[i]=0//射击
	    global.special_pliot_aim[i]=0//命中
	    global.special_pliot_dodge[i]=0//回避
	    global.special_pliot_defence[i]=0//防御
	    global.special_pliot_skill[i]=0//技量
	}
	//-------------------------------------------
	i=0
	global.special_name[i]="大概是i力场贴片吧"
	global.special_text[i]="护盾系#消费EN5，伤害减免800#需求：新人类/强化人lv1"
	global.special_type[i]=1
	//0=关键词系 1=护盾系
	//2=觉醒系 3=Buff系
	    //护盾系部分
	    global.special_en[i]=5
	    global.special_dr[i]=800
	    global.special_mzl[i]=100//触发概率
	    global.special_break[i]=false//是否像at力场一样会被击破
	    global.special_anti_beam_type[i]=0
	        //0=通吃 1=只抵挡光束 2=无法抵挡光束
	    //-特殊能力对机师特性的要求
	    for(j=0;j<10;j++)
	    {
	        global.special_xq_perk_id[i,j]=-1
	        global.special_xq_perk_lv[i,j]=-1
	    }
	    global.special_xq_perk_id[i,0]=0
	    global.special_xq_perk_lv[i,0]=1
	//-------------------------------------------
	i=1
	global.special_name[i]="剑装备"
	global.special_text[i]="关键词系#受到攻击时有一定几率触发【剑切】#需求：剑切"
	global.special_type[i]=0
	//-------------------------------------------
	i=2
	global.special_name[i]="盾装备"
	global.special_text[i]="关键词系#受到攻击时有一定几率触发【盾防御】#需求：盾防御"
	global.special_type[i]=0
	//-------------------------------------------
	i=3
	global.special_name[i]="枪装备"
	global.special_text[i]="关键词系#受到导弹攻击时有一定几率触发【击落】#需求：击落"
	global.special_type[i]=0
	//-------------------------------------------
	i=4
	global.special_name[i]="分离"
	global.special_text[i]="关键词系#可以通过【分离】指令一次性切换为其他形态，HP/EN/弹药全回复。"
	global.special_type[i]=0
	//-------------------------------------------
	i=5
	global.special_name[i]="变形"
	global.special_text[i]="关键词系#可以通过【变形】指令切换为各种形态"
	global.special_type[i]=0
	//-------------------------------------------
	i=6
	global.special_name[i]="换装"
	global.special_text[i]="关键词系#拥有一定数量的换装组件，可以选择装备"
	global.special_type[i]=0
	//-------------------------------------------
	i=7
	global.special_name[i]="虔诚护盾"
	global.special_text[i]="护盾系#消费EN5，实弹伤害减免600#需求：神职人员lv1"
	global.special_type[i]=1
	//0=关键词系 1=护盾系
	//2=觉醒系 3=Buff系
	    //护盾系部分
	    global.special_en[i]=5
	    global.special_dr[i]=600
	    global.special_mzl[i]=100//触发概率
	    global.special_break[i]=false//是否像at力场一样会被击破
	    global.special_anti_beam_type[i]=2
	        //0=通吃 1=只抵挡光束 2=无法抵挡光束
	    //-特殊能力对机师特性的要求
	    for(j=0;j<10;j++)
	    {
	        global.special_xq_perk_id[i,j]=-1
	        global.special_xq_perk_lv[i,j]=-1
	    }
	    global.special_xq_perk_id[i,0]=0
	    global.special_xq_perk_lv[i,0]=1
	//-------------------------------------------
	i=8
	global.special_name[i]="AT力场"
	global.special_text[i]="护盾系#伤害2000以下的攻击对本机无效，若超过2000点则会击破AT力场"
	global.special_type[i]=1
	//0=关键词系 1=护盾系
	//2=觉醒系 3=Buff系
	    //护盾系部分
	    global.special_en[i]=0
	    global.special_dr[i]=2000
	    global.special_mzl[i]=100//触发概率
	    global.special_break[i]=true//是否像at力场一样会被击破
	    global.special_anti_beam_type[i]=0
	        //0=通吃 1=只抵挡光束 2=无法抵挡光束
	    //-特殊能力对机师特性的要求
	    for(j=0;j<10;j++)
	    {
	        global.special_xq_perk_id[i,j]=-1
	        global.special_xq_perk_lv[i,j]=-1
	    }
	//-------------------------------------------
	i=9
	global.special_name[i]="AT力场"
	global.special_text[i]="护盾系#伤害3000以下的攻击对本机无效，若超过3000点则会击破AT力场"
	global.special_type[i]=1
	//0=关键词系 1=护盾系
	//2=觉醒系 3=Buff系
	    //护盾系部分
	    global.special_en[i]=0
	    global.special_dr[i]=3000
	    global.special_mzl[i]=100//触发概率
	    global.special_break[i]=true//是否像at力场一样会被击破
	    global.special_anti_beam_type[i]=0
	        //0=通吃 1=只抵挡光束 2=无法抵挡光束
	    //-特殊能力对机师特性的要求
	    for(j=0;j<10;j++)
	    {
	        global.special_xq_perk_id[i,j]=-1
	        global.special_xq_perk_lv[i,j]=-1
	    }
	//-------------------------------------------
	i=10
	global.special_name[i]="光学迷彩"
	global.special_text[i]="护盾系#10%概率发动，完全挡下一次攻击"
	global.special_type[i]=1
	//0=关键词系 1=护盾系
	//2=觉醒系 3=Buff系
	    //护盾系部分
	    global.special_en[i]=0
	    global.special_dr[i]=200000
	    global.special_mzl[i]=10//触发概率
	    global.special_break[i]=false//是否像at力场一样会被击破
	    global.special_anti_beam_type[i]=0
	        //0=通吃 1=只抵挡光束 2=无法抵挡光束
	    //-特殊能力对机师特性的要求
	    for(j=0;j<10;j++)
	    {
	        global.special_xq_perk_id[i,j]=-1
	        global.special_xq_perk_lv[i,j]=-1
	    }
	//-------------------------------------------
	i=11
	global.special_name[i]="Robot魂"
	global.special_text[i]="关键词系#机体可以在整备界面中选择装备一些通用武器"
	global.special_type[i]=0
	//-------------------------------------------
	i=12
	global.special_name[i]="EN恢复 C"
	global.special_text[i]="buff系#每次蓝方回合开始时，恢复10%EN"
	global.special_type[i]=3
	//-------------------------------------------
	i=13
	global.special_name[i]="EN恢复 B"
	global.special_text[i]="buff系#每次蓝方回合开始时，恢复30%EN"
	global.special_type[i]=3
	//-------------------------------------------
	i=14
	global.special_name[i]="EN恢复 A"
	global.special_text[i]="buff系#每次蓝方回合开始时，恢复50%EN"
	global.special_type[i]=3
	//-------------------------------------------
	i=15
	global.special_name[i]="EN恢复 Ex"
	global.special_text[i]="buff系#每次蓝方回合开始时，恢复100%EN"
	global.special_type[i]=3
	//-------------------------------------------
	i=16
	global.special_name[i]="HP恢复 C"
	global.special_text[i]="buff系#每次蓝方回合开始时，恢复10%HP"
	global.special_type[i]=3
	//-------------------------------------------
	i=17
	global.special_name[i]="HP恢复 B"
	global.special_text[i]="buff系#每次蓝方回合开始时，恢复30%HP"
	global.special_type[i]=3
	//-------------------------------------------
	i=18
	global.special_name[i]="HP恢复 A"
	global.special_text[i]="buff系#每次蓝方回合开始时，恢复50%HP"
	global.special_type[i]=3
	//-------------------------------------------
	i=19
	global.special_name[i]="HP恢复 Ex"
	global.special_text[i]="buff系#每次蓝方回合开始时，恢复100%HP"
	global.special_type[i]=3
	//-------------------------------------------
	i=20
	global.special_name[i]="日月星辰赤金铠"
	global.special_text[i]="护盾系#受到的光束兵器伤害减免1500#需求：麒麟lv1"
	global.special_type[i]=1
	//0=关键词系 1=护盾系
	//2=觉醒系 3=Buff系
	    //护盾系部分
	    global.special_en[i]=0
	    global.special_dr[i]=1500
	    global.special_mzl[i]=100//触发概率
	    global.special_break[i]=false//是否像at力场一样会被击破
	    global.special_anti_beam_type[i]=1
	        //0=通吃 1=只抵挡光束 2=无法抵挡光束
	    //-特殊能力对机师特性的要求
	    for(j=0;j<10;j++)
	    {
	        global.special_xq_perk_id[i,j]=-1
	        global.special_xq_perk_lv[i,j]=-1
	    }
	    global.special_xq_perk_id[i,0]=11
	    global.special_xq_perk_lv[i,0]=1
	//-------------------------------------------
	i=21
	global.special_name[i]="麒麟游"
	global.special_text[i]="护盾系#20%概率发动，完全抵挡一次非光束攻击#需求：麒麟lv1"
	global.special_type[i]=1
	//0=关键词系 1=护盾系
	//2=觉醒系 3=Buff系
	    //护盾系部分
	    global.special_en[i]=0
	    global.special_dr[i]=200000
	    global.special_mzl[i]=20//触发概率
	    global.special_break[i]=false//是否像at力场一样会被击破
	    global.special_anti_beam_type[i]=2
	        //0=通吃 1=只抵挡光束 2=无法抵挡光束
	    //-特殊能力对机师特性的要求
	    for(j=0;j<10;j++)
	    {
	        global.special_xq_perk_id[i,j]=-1
	        global.special_xq_perk_lv[i,j]=-1
	    }
	    global.special_xq_perk_id[i,0]=11
	    global.special_xq_perk_lv[i,0]=1
	//-------------------------------------------
	i=22
	global.special_name[i]="修理装置"
	global.special_text[i]="关键词系#持有修理装置，可以维修附近的我方机体。"
	global.special_type[i]=0
	//-------------------------------------------
	i=23
	global.special_name[i]="补给装置"
	global.special_text[i]="关键词系#持有补给装置，可以为附近的我方机体补充弹药和EN、MP，但是接受补给的机体，其机师的气力会下降。"
	global.special_type[i]=0
	//-------------------------------------------
	global.special_num=i+1
    



}
