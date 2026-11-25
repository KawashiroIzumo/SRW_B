var i,rid;
i=actors_now
rid=global.mrobo_id[mrid[i]]
actors_reset(i)
j=7
actors_reset(j)
actors_sprite[j]=robo17s01_ruyao
actors_image[j]=0
actors_x[j]=0
actors_y[j]=00
actors_image_speed[j]=0.5
actors_xs[j]=1
actors_ys[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true

