/// @description 添加机体 创建刘醒
a=create_mrobo_kai(46,3,10,0,31,3)//刘醒
if(a>=0)
{
    var lslv=workout_enemy_lv();
	var i=global.mrobo_pliot[a]
    while(global.pliot_lv[i]<lslv)
    {
        pliot_lvup(i)
    }
    mrobo_add_equip(a,0,1)
    global.mrobo_pliot_sp[a]=global.pliot_sp[i]
    mrobo_refrish(a)
}


