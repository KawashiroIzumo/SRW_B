/// @description 受击
var i;
i=actors_now
actors_reset(4)
j=4
actors_sprite[j]=fx01_soundlight
actors_colora[j]=c_red
actors_x[j]=actors_x[!i]+irandom(256)-128
actors_y[j]=actors_y[!i]+irandom(128)-64
actors_xs[j]=0.5
actors_ys[j]=0.5
actors_disappear[j]=0.05
actors_rotate_speed[j]=6
actors_grow[j]=0.1
audio_play_sound(sound144_gunpower00,1,false)
audio_play_sound(sound13_shiled003,1,false)

battlecam_speed=0
nowdmg=dmg
nowdmg_ala=90
playdh_mbdmg=1

