/// @description 动画始点
var i;
i=actors_now
actors_image_speed[4]=0
actors_image[4]=9
battlecam_speed=0

actors_reset(3)
j=3
actors_sprite[j]=robo11s00_zlbp_in
actors_image[j]=0
actors_image_speed[j]=0.5
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true

