/// @description 受击
var i;
i=actors_now


j=5
actors_reset(j)
actors_sprite[j]=robo02s00_beam
actors_image_speed[j]=0.5
actors_rotate[j]=irandom(60)-30
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]+256
audio_play_sound(sound13_shiled003,1,false)
audio_play_sound(sound42_laser,1,0)

actors_sprite[!i]=global.robo_spr_hurt[global.mrobo_id[mrid[!i]]]
if(avl_special>=0)
{
    actors_sprite[!i]=global.robo_spr_defence[global.mrobo_id[mrid[!i]]]
    info_add(global.special_name[avl_special],!i)
}
actors_image[!i]=5
actors_image_speed[!i]=0


