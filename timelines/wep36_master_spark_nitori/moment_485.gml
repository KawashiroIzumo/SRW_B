var i;
i=actors_now
audio_play_sound(sound34_hkdrum,0,0)
actors_sprite[!i]=global.robo_spr_stand[global.mrobo_id[mrid[!i]]]
actors_image[!i]=9
actors_image_speed[!i]=1
actors_copy(5,!i)
j=4
actors_alpha[j]=1
actors_disappear[j]=0.05


