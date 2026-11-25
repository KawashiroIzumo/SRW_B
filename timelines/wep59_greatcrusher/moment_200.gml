var i,j;
i=actors_now
actors_image_speed[i]=0
actors_reset(8)
j=8
actors_sprite[j]=robo34s00_greatcrusher_cutin
actors_image[j]=0
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true


