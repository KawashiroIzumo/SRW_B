b=add_base_mrobo(34,11,1,1,1,1,1,1)
c=workout_enemy_lv()
while(global.pliot_lv[11]<c+2)
{
    pliot_lvup(11)
}
a=create_mrobo_base(b,4,15,0)
if(a>=0)
{
    global.mrobo_pliot_ql[a]=125
}


