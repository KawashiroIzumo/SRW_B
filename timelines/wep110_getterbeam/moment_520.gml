var i,j;
i=actors_now
j=50
actors_sprite[j]=zdb
actors_speed[j]=0
actors_disappear[j]=0
actors_rotate[j]=0
actors_rotate_speed[j]=0
actors_grow[j]=0
battlecam_speed=0
if(i==0)
{
    actors_x[j]=battlecam_x-640
    actors_y[j]=battlecam_y-360
}
else
{
    actors_x[j]=battlecam_x+640
    actors_y[j]=battlecam_y-360
}

