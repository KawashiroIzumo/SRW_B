a=mrobo_find_pliot(17)
if(sl<=2)
{
    ax=global.mrobo_x[a]-2+sl
    ay=global.mrobo_y[a]-sl
}
else if(sl<=4)
{
    ax=global.mrobo_x[a]-2+sl
    ay=global.mrobo_y[a]-4+sl
}
else if(sl<=6)
{
    ax=global.mrobo_x[a]+6-sl
    ay=global.mrobo_y[a]-4+sl
}
else
{
    ax=global.mrobo_x[a]-1
    ay=global.mrobo_y[a]+1
}
create_fx_puz(fx_robo_coming,ax,ay)
view_do_center_puz(0,ax,ay)

