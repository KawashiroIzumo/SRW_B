var i,k;
i=actors_now
actors_speed[i]=20
actors_direction[i]=180
if(i)actor_direction=0
j=50
actors_sprite[j]=zdb
actors_speed[j]=26
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

