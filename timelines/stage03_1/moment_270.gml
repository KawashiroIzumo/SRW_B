b=add_base_mrobo(11,13,1,1,1,1,1,1)
c=workout_enemy_lv()
while(global.pliot_lv[13]<c+2)
{
    pliot_lvup(13)
}
a=create_mrobo_base(b,5,19,0)
if(a>=0)
{
    global.mrobo_pliot_ql[a]=125
}


