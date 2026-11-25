var i;
i=actors_now
actors_sprite[5]=zdb
actors_speed[5]=0
battlecam_speed=0
if(actors_x[i+2]>1920)
{
    actors_x[5]=battlecam_x-640
    actors_y[5]=battlecam_y-360
}
else
{
    actors_x[5]=battlecam_x+640
    actors_y[5]=battlecam_y-360
}

