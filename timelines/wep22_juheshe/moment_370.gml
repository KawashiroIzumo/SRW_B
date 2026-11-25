var i,j;
i=actors_now
actors_reset(4)
actors_reset(7)
j=7
actors_sprite[j]=robo12s00_juheshe_bltin
actors_image[j]=0
actors_x[j]=0
actors_y[j]=00
actors_image_speed[j]=0.5
actors_xs[j]=0.75
actors_ys[j]=0.75
if(i==1)actors_xs[j]=-0.75
actors_follow[j]=true
audio_play_sound(sound39_gundam_dash,1,0)

