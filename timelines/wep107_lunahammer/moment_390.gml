var i;
i=actors_now
actors_reset(i)
actors_reset(7)
j=7
actors_sprite[j]=zdb2
actors_image[j]=0
actors_alpha[j]=0
actors_disappear[j]=-0.025
actors_x[j]=actors_x[!i]*2
actors_y[j]=actors_y[!i]*2
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true

