/// @description 动画始点3
var i;
i=actors_now
actors_image_speed[4]=0
actors_image[4]=9
battlecam_speed=0

actors_reset(7)
j=7
actors_sprite[j]=robo37s00_sword_miss
actors_image[j]=0
actors_image_speed[j]=0.5
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true

audio_play_sound(SE11_tractor,1,0)

