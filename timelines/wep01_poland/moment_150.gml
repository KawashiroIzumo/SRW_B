var i;
i=actors_now
actors_image_speed[i]=0
j=4
actors_sprite[j]=fx01_soundlight
actors_x[j]=actors_x[i]+irandom(256)-128
actors_y[j]=actors_y[i]+irandom(128)-64
actors_disappear[j]=0.05
actors_rotate_speed[j]=6
actors_grow[j]=0.2
audio_play_sound(sound36_highsound_laucher,1,false)

