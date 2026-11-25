/// @description 动画始点2 
var i,j;
i=actors_now
var rid=global.mrobo_id[mrid[i]]
actors_reset(4)
actors_reset(7)
j=7
actors_sprite[j]=robo01s00_niddle_hit
if(rid==18)actors_sprite[j]=robo18s00_niddle_hit
actors_image[j]=0
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=1


