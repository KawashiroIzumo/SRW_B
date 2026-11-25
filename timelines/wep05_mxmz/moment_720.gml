var i;
i=actors_now
j=220
actors_speed[j]=40
actors_speed[219]=40
audio_play_sound(sound14_shiled001,1,0)
j=10
actors_reset(j)
actors_sprite[j]=robo01s00_crow
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_disappear[j]=0.05
actors_rotate[j]=45
audio_play_sound(sound39_gundam_dash,1,0)

