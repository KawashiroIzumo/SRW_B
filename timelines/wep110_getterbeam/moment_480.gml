var i,k;
i=actors_now
j=50
actors_sprite[j]=zdb
actors_speed[j]=36
j=7
actors_alpha[j]=1
actors_disappear[j]=0
if(i==0)
{
    //show_message("i==1")
    actors_x[j]=battlecam_x-640-1440
    actors_y[j]=battlecam_y-360
    actors_xs[j]=1
    actors_direction[j]=0
}
else
{
    actors_x[j]=battlecam_x+640+1440
    actors_y[j]=battlecam_y-360
    actors_xs[j]=-1
    actors_direction[j]=180
}

