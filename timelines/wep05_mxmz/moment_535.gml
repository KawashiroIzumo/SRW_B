var i;
i=actors_now
battlecam_speed=0
j=220
actors_reset(j)
actors_sprite[j]=robo01s00_plane
actors_x[j]=battlecam_x-(1-2*i)*640
actors_y[j]=battlecam_y+128
actors_xs[j]=-(1-2*i)
actors_ys[j]=1
actors_speed[j]=40
actors_direction[j]=350
if(i==1)actors_direction[j]=190
instance_create(0,0,fsq02_reimu_boober)
audio_play_sound(sound39_gundam_dash,1,0)


