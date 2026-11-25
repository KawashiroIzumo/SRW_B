var i;
i=actors_now
battlecam_x=actors_x[!i+2]
battlecam_y=actors_y[!i+2]
battlecam_speed=0
audio_play_sound(sound39_gundam_dash,1,0)
j=7
actors_reset(j)
actors_sprite[j]=robo17s00_yyy_in
actors_image[j]=0
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true

