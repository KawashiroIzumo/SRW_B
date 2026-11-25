b=mrobo_find_pliot(2)
a=mrobo_find_robo(22)
if(global.mrobo_x[a]>global.mrobo_x[b]+1)
{
    global.mrobo_x[a]--
}
else if(global.mrobo_x[a]<global.mrobo_x[b]-1)
{
    global.mrobo_x[a]++
}
else if(global.mrobo_y[a]>global.mrobo_y[b]+1)
{
    global.mrobo_y[a]--
}
else if(global.mrobo_y[a]<global.mrobo_y[b]-1)
{
    global.mrobo_y[a]++
}  


