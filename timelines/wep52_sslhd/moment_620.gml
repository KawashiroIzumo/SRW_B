var i;
i=actors_now
j=5
actors_copy(!i,j)
actors_x[j]=battlecam_x
actors_y[j]=battlecam_y
actors_xs[j]=sign(actors_xs[j])*0.5
actors_ys[j]=0.5
j=4
actors_reset(j)
actors_sprite[j]=zdb3
actors_follow[j]=1

