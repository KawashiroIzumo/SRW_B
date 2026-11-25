/// @description 添加机体 创建魔理沙
view_do_center_puz(0,13,1)
a=add_base_mrobo(24,5,1,1,1,1,1,1)//魔理沙
a=create_mrobo_base(a,13,1,0)
if(a>=0)
{
    global.mrobo_pliot_ql[a]=120
    while(global.pliot_lv[5]<6)
    {
        pliot_lvup(5)
    }
    mrobo_refrish(a)
}
c=add_base_mrobo(9,7,1,1,1,1,1,1)//lady陆
base_get_wep(c,57)
base_get_wep(c,56)
if(c>=0)
{
    while(global.pliot_lv[7]<6)
    {
        pliot_lvup(7)
    }
    mrobo_refrish(a)
}
add_base_mrobo(32,8,1,1,1,1,1,1)//妖梦
if(c>=0)
{
    while(global.pliot_lv[8]<6)
    {
        pliot_lvup(8)
    }
    mrobo_refrish(a)
}
b=base_find_pliot(2)
base_robo_change(b,17)   //灵梦换机


