var i,j,k,l;
i=actors_now
j=4
actors_reset(j)
actors_sprite[j]=robo24s00_masterspark_bak
actors_image[j]=0
actors_alpha[j]=0
actors_disappear[j]=-0.05
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_image_speed[j]=0
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=1
j=5
actors_copy(!i,5)
audio_play_sound(sound43_windlow,1,0)

