/// @description 动画始点3
//闪避动作-冻结
wepscript_dodge_hold()

var i;
i=actors_now
actors_reset(7)
j=7
actors_sprite[j]=robo00s00_polandsword_miss
actors_image[j]=0
actors_image_speed[j]=0.5
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true
