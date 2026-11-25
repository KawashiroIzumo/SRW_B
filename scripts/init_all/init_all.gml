/// @description init_all()
function init_all() 
{
	database_all();
	global.verson=0001
	global.onship=-1
	global.battle_dh=false
	global.mobile=false
	global.money=0
	global.turn_num=1//回合数
	global.turn_sum=1//总回合数
	global.stage_finish=-1//主线进度
	global.nextstage=stage00A_OP
	//字体设定
	global.font_m=font_add(working_directory+"\\fonts\\SOURCEHANSERIFCN-HEAVY.OTF",20,0,0,0,65535)
	global.font_m_blk=font_add(working_directory+"\\fonts\\ztq_blk.ttf",20,0,0,0,65535)
	global.font_s=font_add(working_directory+"\\fonts\\SOURCEHANSERIFCN-HEAVY.OTF",16,0,0,0,65535)
	global.font_dmg=font_add_sprite(dmg_digit,ord("0"),true,10)
	global.font_tittle=font_add(working_directory+"\\fonts\\SOURCEHANSERIFCN-HEAVY.OTF",64,0,0,0,65535)
	global.drawing=1
	global.bgm=noone
	global.roombgm=noone
	global.godmode=false
	mrobo_reset()
	//条件
	global.task_win="敌全灭"
	global.task_lose="我方任意机体被击坠"
	global.task_name="第一话 暴风内的不协和音"
	//事件队列
	for(i=0;i<100;i++)
	{
	    global.event_queue_timeline[i]=noone
	    global.event_queue_enabled[i]=false
	}
	global.event_queue_top=0
	global.event_queue_end=0
	//各种点数
	for(i=0;i<100;i+=1)
	{
	    global.ls_variable[i]=0
	    global.ls_string[i]=" "
	}
	//机体仓库
	for(i=0;i<100;i++)
	{
	    add_base_clean(i)
	}
	//鼠标操作效果
	instance_create_depth(0,0,-1145,mouse_effect_creator)
	//设置
	init_cofing()
	//改机相关
	init_cost()
	//测试专用
	init_test()



}
