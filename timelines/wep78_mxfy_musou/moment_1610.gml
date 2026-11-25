/// @description 假人没了
var i,j;
i=actors_now
j=5
actors_reset(5)
j=8
actors_reset(8)
actors_sprite[j]=zdb_white
actors_image[j]=0
actors_alpha[j]=0
actors_disappear[j]=-0.025
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true

