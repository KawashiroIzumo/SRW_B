var i;
i=actors_now
actors_image_speed[i]=0
flag_UI=false
j=7
actors_reset(j)
actors_sprite[j]=robo24s00_masterspark_cutin
actors_image[j]=0
actors_image_speed[j]=0.5
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true

