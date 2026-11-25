/// @description 定点移动
view_do_center_find_pliot(5)
a=mrobo_find_pliot(5)
if(global.mrobo_x[a]>13+1)
{
    global.mrobo_x[a]--
}
else if(global.mrobo_x[a]<13-1)
{
    global.mrobo_x[a]++
}
else if(global.mrobo_y[a]>12+1)
{
    global.mrobo_y[a]--
}
else if(global.mrobo_y[a]<12-1)
{
    global.mrobo_y[a]++
}  


