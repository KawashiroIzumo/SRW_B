/// @description 添加机体 创建杨阳
a=create_mrobo_kai(48,2,11,0,32,3)//杨阳
if(a>=0)
{
    var lslv=workout_enemy_lv();
	var i=global.mrobo_pliot[a]
	global.mrobo_pliot_c_name[a]="杨阳"
	global.mrobo_pliot_npc[a]=1
    while(global.pliot_lv[i]<lslv)
    {
        pliot_lvup(i)
    }
    mrobo_add_equip(a,0,0)
    global.mrobo_pliot_sp[a]=global.pliot_sp[i]
    mrobo_refrish(a)
}


