/// @description 受击
var i;
i=actors_now

audio_play_sound(sound13_shiled003,1,false)
actors_sprite[!i]=global.robo_spr_hurt[global.mrobo_id[mrid[!i]]]
if(avl_special>=0)
{
    actors_sprite[!i]=global.robo_spr_defence[global.mrobo_id[mrid[!i]]]
    info_add(global.special_name[avl_special],!i)
}
actors_image[!i]=5
actors_image_speed[!i]=0
playdh_mbdmg=1

