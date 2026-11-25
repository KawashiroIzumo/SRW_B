/// @description 动画始点
var i,j;
i=actors_now
actors_reset(4)
actors_reset(7)
j=4
actors_sprite[j]=robo09s00_flagflag_hit_bak
actors_image[j]=0
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=1
j=7
actors_sprite[j]=robo09s00_flagflag_hit_top
actors_image[j]=0
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=1
audio_play_sound(SE20_light03,1,0)