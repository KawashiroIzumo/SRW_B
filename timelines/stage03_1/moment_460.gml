a=mrobo_find_pliot(17)
if(global.mrobo_y[a]>=10)
{
    timeline_position=449
}
else
{
    var ax=global.mrobo_x[a],ay=global.mrobo_y[a];
    mrobo_reset_single(a)
    a=create_mrobo_kai(39,ax,ay,1,17,1)
}

