var i;
i=actors_now
j=7
actors_speed[j]=0

j=4
actors_sprite[j]=fx01_soundlight
actors_alpha[j]=1
actors_xs[j]=1
actors_ys[j]=1
actors_x[j]=actors_x[!i]+irandom(256)-128
actors_y[j]=actors_y[!i]+irandom(128)-64-32
actors_disappear[j]=0.05
actors_rotate_speed[j]=6
actors_grow[j]=0.2
audio_play_sound(sound40_beamsaber,1,false)

actors_rotate_speed[!i]=6
actors_speed[!i]=36
actors_direction[!i]=90

