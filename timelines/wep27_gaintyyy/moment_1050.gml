/// @description 移动镜头至敌方视角
var i,j,k,l;
i=actors_now
bks_set(global.mrobo_x[mrid[!i]],global.mrobo_y[mrid[!i]])
battlecam_x=actors_x[!i]+320
battlecam_y=actors_y[!i]
j=50
actors_alpha[j]=1
actors_disappear[j]=0.05
j=7
actors_reset(j)
actors_sprite[j]=robo17s00_mayoi
actors_image[j]=0
actors_x[j]=0
actors_y[j]=00
actors_image_speed[j]=0.5
actors_xs[j]=1
actors_ys[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true

