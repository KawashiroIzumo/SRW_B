///@description 受击
var i;
i=actors_now
audio_play_sound(sound13_shiled003,1,false)

actors_sprite[5]=global.robo_spr_hurt[global.mrobo_id[mrid[!i]]]
if(avl_special>=0)
{
    actors_sprite[5]=global.robo_spr_defence[global.mrobo_id[mrid[!i]]]
    info_add(global.special_name[avl_special],!i)
}
actors_image[5]=0
actors_image_speed[5]=1
actors_speed[5]=8
actors_direction[5]=180
if(i==1)actors_direction[5]=0
battlecam_speed=0
playdh_mbdmg=1