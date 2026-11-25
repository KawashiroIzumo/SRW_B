var i,k;
i=actors_now
for(k=4;k<=7;k++)
{
    actors_reset(i)
}
actors_sprite[150]=zdb
actors_speed[150]=20
battlecam_speed=16
if(i==0)
{
    //show_message("i==1")
    actors_x[150]=battlecam_x-640-1440
    actors_y[150]=battlecam_y-360
    actors_xs[150]=1
    actors_direction[150]=0
    battlecam_direction=180
}
else
{
    actors_x[150]=battlecam_x+640+1440
    actors_y[150]=battlecam_y-360
    actors_xs[150]=-1
    actors_direction[150]=180
    battlecam_direction=0
}

