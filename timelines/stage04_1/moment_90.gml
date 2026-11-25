/// @description 添加机体 创建杂兵
a=create_mrobo_kai(50,lsx,lsy,1,35,1)//杂兵机
if(a>=0)
{
    var lslv=workout_enemy_lv()-1;
	var i=global.mrobo_pliot[a]
	global.mrobo_pliot_c_name[a]="E.R兵"
    while(global.pliot_lv[i]<lslv)
    {
        pliot_lvup(i)
    }
    mrobo_refrish(a)
}


