var i,j;
i=actors_now
j=380
actors_sprite[j]=zdb
actors_speed[j]=0
battlecam_speed=0
if(actors_x[i+2]>1920)
{
    actors_x[j]=battlecam_x-640
    actors_y[j]=battlecam_y-360
}
else
{
    actors_x[j]=battlecam_x+640
    actors_y[j]=battlecam_y-360
}

