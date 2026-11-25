var i;
i=actors_now
actors_image_speed[4]=0
actors_image[4]=9
battlecam_speed=0

actors_reset(7)
j=7
actors_sprite[j]=robo09s00_flagBoomerang_miss
actors_image[j]=0
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true
audio_play_sound(sound41_ubisoft,1,0)

