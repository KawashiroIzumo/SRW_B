/// @description 夏亚 定点移动
view_do_center_find_pliot_name("职业选手三倍速")
a=mrobo_find_pliot_name("职业选手三倍速")
if(tick==0)
{
    if(global.mrobo_x[a]>15)
    {
        global.mrobo_x[a]--
    }
    else if(global.mrobo_x[a]<15)
    {
        global.mrobo_x[a]++
    }
    else if(global.mrobo_y[a]>14)
    {
        global.mrobo_y[a]--
    }
    else if(global.mrobo_y[a]<14)
    {
        global.mrobo_y[a]++
    }  
}
else
{
    if(global.mrobo_y[a]>14)
    {
        global.mrobo_y[a]--
    }
    else if(global.mrobo_y[a]<14)
    {
        global.mrobo_y[a]++
    } 
    else if(global.mrobo_x[a]>15)
    {
        global.mrobo_x[a]--
    }
    else if(global.mrobo_x[a]<15)
    {
        global.mrobo_x[a]++
    }
}
tick=!tick

