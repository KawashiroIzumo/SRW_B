var i,k,j;
i=actors_now
actors_sprite[i]=global.robo_spr_stand[global.mrobo_id[mrid[i]]]
actors_image[i]=0
actors_image_speed[i]=1
j=380
actors_sprite[j]=zdb
actors_speed[j]=20
battlecam_speed=16
if(i==0)
{
    //show_message("i==1")
    actors_x[j]=battlecam_x-640-1440
    actors_y[j]=battlecam_y-360
    actors_xs[j]=1
    actors_direction[j]=0
    battlecam_direction=180
}
else
{
    actors_x[j]=battlecam_x+640+1440
    actors_y[j]=battlecam_y-360
    actors_xs[j]=-1
    actors_direction[j]=180
    battlecam_direction=0
}

