var i;
i=actors_now
battlecam_x=actors_x[!i+2]
battlecam_y=actors_y[!i+2]
battlecam_speed=0
j=50
actors_sprite[j]=noone
actors_speed[j]=0
flag_UI=false
j=7
actors_reset(j)
actors_sprite[j]=robo17s00_badaosl
actors_image[j]=0
actors_x[j]=0
actors_y[j]=00
actors_image_speed[j]=0.5
actors_xs[j]=0.75
actors_ys[j]=0.75
if(i==1)actors_xs[j]=-0.75
actors_follow[j]=true
audio_play_sound(sound39_gundam_dash,1,0)

