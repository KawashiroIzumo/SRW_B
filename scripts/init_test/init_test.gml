function init_test() {
	global.godmode=true
	//制造一个三面存档
	global.money=80000
	var a;
	//关卡信息
	global.task_name="第三章 blablabla"
	global.nextstage=stage04_op
	global.stage_finish=3

	//开关
	global.ls_variable[2]=1//完成好汉不提当年怂
	global.ls_variable[0]=1//设定主角为灵梦
	global.ls_variable[10]=2//完成李庄白肉
	global.ls_variable[11]=1//解锁巨石之锤

	global.ls_variable[30]=1//解锁义海豪情
	global.ls_variable[31]=1//解锁天基臭蛋
	//字串
	global.ls_string[0]="人理保障组织迦勒底"
	//等级
	var lslv=8,i;
	for(i=0;i<global.pliot_num;i++)
	{
		while(global.pliot_lv[i]<lslv)
		{
			pliot_lvup(i)
		}
	}

	//一面角色
	a=add_base_mrobo(22,0,1,1,3,2,1,2)//波澜
	base_get_wep(a,44)
	base_get_wep(a,46)
	base_get_wep(a,56)

	add_base_mrobo(1,2,1,1,3,2,1,2)//灵梦
	add_base_mrobo(2,3,3,2,1,1,4,3)//辽宁号

	//二面角色
	add_base_mrobo(19,5,3,2,1,1,4,3)//魔理沙
	add_base_mrobo(32,8,2,1,3,1,1,2)//妖梦
	add_base_mrobo(45,30,2,1,3,1,1,2)//谢双超
	add_base_mrobo(46,31,2,1,3,1,1,2)//刘醒
	add_base_mrobo(49,34,2,1,3,1,1,2)//伍本伟
	add_base_mrobo(58,41,2,1,3,1,1,2)//铃仙
		a=add_base_mrobo(9,7,1,1,1,4,1,2)//陆夫人
	base_get_wep(a,55)
	base_get_wep(a,54)
	base_get_wep(a,57)

	//三面角色
	a=add_base_mrobo(34,11,2,2,2,2,2,2)//琪露诺
	base_get_wep(a,53)
	base_get_wep(a,55)
	base_get_wep(a,45)

	add_base_mrobo(11,13,2,2,2,2,2,2)//辉针城
}
