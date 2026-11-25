var i,j;
i=actors_now
actors_reset(4)
actors_reset(7)
j=7
actors_sprite[j]=robo12s00_bulletin
actors_image[j]=0
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_image_speed[j]=1
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
audio_play_sound(sound145_machinegun00,1,0)

