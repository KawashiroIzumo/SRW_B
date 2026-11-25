/// @description 添加机体 创建真香扎古
a=create_mrobo_kai(13,14,23,0,32,2)//真香扎古
if(a>=0)
{
    var lslv=workout_enemy_lv()+1;
	var i=global.mrobo_pliot[a]
	global.mrobo_pliot_c_name[a]="博丽真香"
    while(global.pliot_lv[i]<lslv)
    {
        pliot_lvup(i)
    }
    mrobo_refrish(a)
}


