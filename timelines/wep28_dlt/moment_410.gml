var i;
i=actors_now
j=4
actors_reset(j)
actors_sprite[j]=robo02s00_dlt_hit
actors_image_speed[j]=.5
actors_rotate[j]=0
actors_follow[j]=true
if(i==1)actors_xs[j]=-1
audio_play_sound(sound43_windlow,1,0)
audio_play_sound(sound145_machinegun00,1,0)

