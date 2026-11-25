/// @description 动画始点2
flag_UI=false
var i,j;
i=actors_now
actors_reset(4)
j=4
actors_sprite[j]=robo24s00_msbr_hit_bak
actors_image[j]=0
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true
actors_reset(7)
j=7
actors_sprite[j]=robo24s00_msbr_hit_top
actors_image[j]=0
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true


