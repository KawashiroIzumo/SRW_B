var i,j;
i=actors_now
flag_UI=false
j=5
actors_grow[j]=0
actors_speed[j]=0
actors_reset(7)
j=7
actors_sprite[j]=robo18s00_blackhole_in
actors_image[j]=0
actors_follow[j]=1
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1

