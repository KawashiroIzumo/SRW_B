/// @description 动画始点
var i;
i=actors_now
j=7
actors_sprite[i]=ls_spr1
actors_image[i]=0
actors_image_speed[i]=0.5
actors_copy(i,7)
actors_follow[j]=true
actors_xs[j]=1
actors_ys[j]=1
actors_reset(i)

j=4
actors_reset(j)
actors_sprite[j]=zdb2
actors_image[j]=0
actors_x[j]=0
actors_y[j]=0
actors_alpha[j]=1
actors_image_speed[j]=0.5
actors_xs[j]=1
actors_ys[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true


