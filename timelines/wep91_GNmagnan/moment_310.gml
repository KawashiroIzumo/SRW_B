/// @description 动画始点2 
var i,j;
i=actors_now
actors_reset(4)
actors_reset(7)
j=7
actors_sprite[j]=robo45s00_magnum_hit
actors_image[j]=0
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=1


audio_play_sound(sound144_gunpower00,1,0)
audio_play_sound(SE00_water06,1,0)
