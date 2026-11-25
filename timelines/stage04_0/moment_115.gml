/// @description 添加机体 创建大蛇炮
a=create_mrobo_kai(40,14,4,1,17,2)//大蛇炮
if(a>=0)
{
    var lslv=workout_enemy_lv()+1;
	var i=global.mrobo_pliot[a]
	global.mrobo_pliot_c_name[a]="铁十字炮术官"
    while(global.pliot_lv[i]<lslv)
    {
        pliot_lvup(i)
    }
    mrobo_add_equip(a,0,8)
    mrobo_refrish(a)
	global.mrobo_ai[a]=1
}


