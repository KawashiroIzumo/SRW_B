/// @description 添加机体 创建清兰
a=create_mrobo_kai(51,lsx,lsy,1,36,0)//清兰机
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


