/// @description 定点移动
view_do_center_find_pliot_name("职业选手梅萨")
a=mrobo_find_pliot_name("职业选手梅萨")
b=mrobo_find_pliot(5)
if(global.mrobo_x[a]>global.mrobo_x[b]-2)
{
    global.mrobo_x[a]--
}
else if(global.mrobo_x[a]<global.mrobo_x[b]-2)
{
    global.mrobo_x[a]++
}
else if(global.mrobo_y[a]>global.mrobo_y[b]-2)
{
    global.mrobo_y[a]--
}
else if(global.mrobo_y[a]<global.mrobo_y[b]-2)
{
    global.mrobo_y[a]++
}  


