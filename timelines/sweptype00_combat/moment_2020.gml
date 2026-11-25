var i;
i=actors_now
actors_image_speed[4]=0
actors_image[4]=9
battlecam_speed=0

actors_reset(7)
j=7
actors_sprite[j]=ls_spr3
actors_image[j]=0
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true
audio_play_sound(sound39_gundam_dash,1,0)
actors_copy(7,6)
actors_sprite[6]=ls_wspr3
actors_copy(7,8)
actors_sprite[8]=ls_tspr3

