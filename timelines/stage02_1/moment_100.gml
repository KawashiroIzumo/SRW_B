/// @description 移动循环
a=mrobo_find_pliot_name("职业选手梅萨")
b=mrobo_find_pliot(5)
if(point_distance(global.mrobo_x[a],global.mrobo_y[a],global.mrobo_x[b]-2,global.mrobo_y[b]-2)>=2)
{
    timeline_position=89
}

