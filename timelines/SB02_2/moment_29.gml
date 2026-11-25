///@description 创建伏兵
view_do_center_find_pliot(31)
b=mrobo_find_pliot(31)
if(b>=0)
{
	j=global.mrobo_x[b]
	i=global.mrobo_y[b]
	a=create_mrobo_kai(44,j,i,1,1,2)
	global.mrobo_pliot_c_name[a]="撤硕教伏兵"
	if(a>=0)
	{
		var lslv=workout_enemy_lv();
		var k=global.mrobo_pliot[a]
		while(global.pliot_lv[k]<lslv)
		{
		    pliot_lvup(k)
		}
		global.mrobo_pliot_sp[a]=global.pliot_sp[4]
		mrobo_refrish(a)
		j=global.mrobo_x[a]
		i=global.mrobo_y[a]
		create_fx_puz(fx_robo_coming,j,i)
	}
}
global.bgm=BGMsrw19_Evil_Incoming