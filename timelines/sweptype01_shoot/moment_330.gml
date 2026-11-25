/// @description 动画始点
var i,j;
i=actors_now
actors_reset(4)
actors_reset(7)
j=7
actors_sprite[j]=ls_spr2
actors_image[j]=0
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=1
audio_play_sound(sound39_gundam_dash,1,false)
actors_copy(7,6)
actors_sprite[6]=ls_wspr2
actors_copy(7,8)
actors_sprite[8]=ls_tspr2

