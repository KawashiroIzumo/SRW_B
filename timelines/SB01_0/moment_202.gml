/// @description 阿姆罗 定点移动
view_do_center_find_pliot(4)
a=mrobo_find_pliot(4)
if(tick==0)
{
    if(global.mrobo_x[a]>14)
    {
        global.mrobo_x[a]--
    }
    else if(global.mrobo_x[a]<14)
    {
        global.mrobo_x[a]++
    }
    else if(global.mrobo_y[a]>15)
    {
        global.mrobo_y[a]--
    }
    else if(global.mrobo_y[a]<15)
    {
        global.mrobo_y[a]++
    }  
}
else
{
    if(global.mrobo_y[a]>15)
    {
        global.mrobo_y[a]--
    }
    else if(global.mrobo_y[a]<15)
    {
        global.mrobo_y[a]++
    } 
    else if(global.mrobo_x[a]>14)
    {
        global.mrobo_x[a]--
    }
    else if(global.mrobo_x[a]<14)
    {
        global.mrobo_x[a]++
    }
}
tick=!tick

