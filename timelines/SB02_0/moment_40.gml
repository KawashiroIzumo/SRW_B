/// @description 添加机体 创建岛市老八
a=create_mrobo_kai(47,23,10,1,33,2)//老八
if(a>=0)
{
    var lslv=workout_enemy_lv();
	var i=global.mrobo_pliot[a]
    while(global.pliot_lv[i]<lslv)
    {
        pliot_lvup(i)
    }
    mrobo_add_equip(a,0,3)
    global.mrobo_pliot_sp[a]=global.pliot_sp[4]
    mrobo_refrish(a)
	global.mrobo_ai[a]=0
}


