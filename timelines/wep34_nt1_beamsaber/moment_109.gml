var i;
i=actors_now
actors_reset(i)
j=4
actors_reset(j)
actors_sprite[j]=zdb2
actors_image[j]=0
actors_alpha[j]=1
actors_disappear[j]=0.1
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true
j=7
actors_reset(j)
actors_sprite[j]=robo23s00_badaoCG1
actors_image[j]=0
actors_grow[j]=0.002
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true
audio_play_sound(sound39_gundam_dash,1,0)

eff=1

battlecam_speed=18
battlecam_direction=180
if(i==1)battlecam_direction=0

