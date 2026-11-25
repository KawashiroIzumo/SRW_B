/// @description 刷怪初始化
a=workout_enemy_lv()
while(global.pliot_lv[16]<a)
{
    pliot_lvup(16)
}
while(global.pliot_lv[17]<a+2)
{
    pliot_lvup(17)
}
sl=0
slto=6

