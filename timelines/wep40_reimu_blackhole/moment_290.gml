var i;
i=actors_now
j=4
actor_reset(j)
actors_sprite[j]=zdb3
actors_image[j]=0
actors_follow[j]=1
actors_alpha[j]=0
actors_disappear[j]=-0.05
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_image_speed[j]=1
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
j=5
actors_copy(!i,5)

