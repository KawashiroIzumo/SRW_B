/// @description 动画终点-始点
var i;
i=actors_now
actors_image[i]=sprite_get_number(actors_sprite[i])-1
actors_image_speed[i]=0
//
actors_reset(4)
j=4
actors_sprite[j]=robo01s00_mxfw_pose2
actors_image[j]=0
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_alpha[j]=0
actors_disappear[j]=-0.025
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true


