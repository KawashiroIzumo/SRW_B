///@description 动画终点-始点
var i;
i=actors_now
actors_sprite[i]=noone
//
flag_UI=false
actors_reset(4)
j=4
actors_sprite[j]=robo51s00_lunahammer_pose2
actors_image[j]=0
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_alpha[j]=0
actors_disappear[j]=-0.1
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true
audio_play_sound(sound39_gundam_dash,1,0)