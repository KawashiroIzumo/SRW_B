a=mrobo_find_pliot(2)

if(global.mrobo_x[a]>16+1)
{
    global.mrobo_x[a]--
}
else if(global.mrobo_x[a]<16-1)
{
    global.mrobo_x[a]++
}
else if(global.mrobo_y[a]>5+1)
{
    global.mrobo_y[a]--
}
else if(global.mrobo_y[a]<5-1)
{
    global.mrobo_y[a]++
}  


