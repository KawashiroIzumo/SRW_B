/// @description 动画始点2 
var i,j;
i=actors_now
var rid=global.mrobo_id[mrid[i]]
actors_reset(4)
actors_reset(7)
j=7
actors_sprite[j]=robo03s00_slash_hit
if(rid==5)actors_sprite[j]=robo05s00_slash_hit
if(rid==6)actors_sprite[j]=robo06s00_slash_hit
if(rid==7)actors_sprite[j]=robo07s00_slash_hit
if(rid==8)actors_sprite[j]=robo08s00_slash_hit
actors_image[j]=0
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=1
audio_play_sound(sound39_gundam_dash,1,0)

