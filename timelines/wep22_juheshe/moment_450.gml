/// @description 受击
var i;
i=actors_now
j=40
actors_sprite[j]=robo12s00_juheshe_cutin
actors_image[j]=0
actors_x[j]=0
actors_y[j]=00
actors_image_speed[j]=0.5
actors_xs[j]=1
actors_ys[j]=1
if(i==1)actors_xs[j]=-0.75
actors_follow[j]=true

audio_play_sound(sound40_beamsaber,1,false)
audio_play_sound(sound13_shiled003,1,false)

battlecam_speed=0
pid=global.mrobo_pliot[mrid[!i]]

playdh_mbdmg=1

