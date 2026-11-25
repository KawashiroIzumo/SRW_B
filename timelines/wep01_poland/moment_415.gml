var i,rid;
i=actors_now
rid=global.mrobo_id[mrid[!i]]
actors_sprite[6]=global.robo_spr_stand[rid]
//show_message("停止 sprite="+sprite_get_name(actors_sprite[6]))
actors_image_speed[6]=1
actors_speed[6]=0
actors_grow[6]=0

j=7
actors_sprite[j]=fx01_soundlight
actors_x[j]=actors_x[!i]+irandom(256)-128
actors_y[j]=actors_y[!i]+irandom(128)-64
actors_disappear[j]=0.05
actors_rotate_speed[j]=6
actors_grow[j]=0.2
audio_play_sound(sound36_highsound_laucher,1,false)

