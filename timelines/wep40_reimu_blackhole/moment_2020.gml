var i;
i=actors_now
actors_image_speed[4]=0
actors_image[4]=9
battlecam_speed=0

actors_reset(7)
j=7
actors_sprite[j]=robo18s00_blackhole_in
actors_image[j]=0
actors_image_speed[j]=0.5
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_xs[j]=1.25
if(i==1)actors_xs[j]=-1.25
actors_ys[j]=1.25
actors_follow[j]=true

