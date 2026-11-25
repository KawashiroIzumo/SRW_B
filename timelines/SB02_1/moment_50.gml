/// @description 添加机体 创建卢本伟
a=create_mrobo_kai(49,8,7,0,34,3)//卢本伟
if(a>=0)
{
    var lslv=workout_enemy_lv();
	var i=global.mrobo_pliot[a]
    while(global.pliot_lv[i]<lslv)
    {
        pliot_lvup(i)
    }
    mrobo_add_equip(a,0,0)
	mrobo_get_wep(a,46)
    mrobo_get_wep(a,95)
	mrobo_get_wep(a,44)
	mrobo_get_wep(a,96)
    global.mrobo_pliot_sp[a]=global.pliot_sp[i]
	global.mrobo_pliot_ql[a]=120
    mrobo_refrish(a)
}
global.bgm=BGMsrw06_Baltic_Levity_byfreePD

