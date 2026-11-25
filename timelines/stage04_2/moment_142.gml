/// @description 添加机体 创建铃瑚
a=create_mrobo_kai(52,lsx,lsy,1,37,0)//铃瑚机
if(a>=0)
{
    var lslv=workout_enemy_lv()+1;
	var i=global.mrobo_pliot[a]
    while(global.pliot_lv[i]<lslv)
    {
        pliot_lvup(i)
    }
    mrobo_refrish(a)
}


