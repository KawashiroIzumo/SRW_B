var i;
i=actors_now
actors_sprite[4]=noone
actors_image_speed[!i]=1
actor_speed[!i]=16
battlecam_speed=8
actors_direction[!i]=0
battlecam_direction=0
if(i==1)
{
    actors_direction[!i]=180
    battlecam_direction=180
}
flag_UI=true

j=6
actors_sprite[j]=fx01_soundlight
actors_x[j]=actors_x[!i]+irandom(256)-128
actors_y[j]=actors_y[!i]+irandom(128)-64
actors_disappear[j]=0.05
actors_rotate_speed[j]=6
actors_grow[j]=0.2
audio_play_sound(sound36_highsound_laucher,1,false)
audio_play_sound(sound15_shiled002,1,false)

