///@descr 创造派遣界面
var bid=base_find_pliot(0)//寻找波澜哥的机体
global.base_lock[bid]=true//因波澜哥已出击，锁定波澜哥

bid=base_find_pliot(3)//寻找辽宁号
global.base_lock[bid]=true//因辽宁号已出击，锁定辽宁号

bid=base_find_pliot(13)//寻找辉针城
global.base_lock[bid]=true//因辉针城已出击，锁定辉针城

a=instance_create(x,y,team_set_gui)//创造出击界面
with(a)
{
	#region 设定出击范围
	var vx,vy;
	for(vx=21;vx<=21;vx+=1)
	{
		for(vy=8;vy<=15;vy+=1)
		{
			robo_go_map_add_single(vx,vy)
		}
	}
	#endregion
	robo_go_max=8//改变出击上限
}