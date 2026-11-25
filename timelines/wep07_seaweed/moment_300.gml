var i;
i=actors_now
actors_sprite[150]=zdb
actors_speed[150]=0
battlecam_speed=0
if(actors_x[i+2]>1920)
{
    actors_x[150]=battlecam_x-640
    actors_y[150]=battlecam_y-360
}
else
{
    actors_x[150]=battlecam_x+640
    actors_y[150]=battlecam_y-360
}
j=40
actors_reset(40)
actors_reset(i)

