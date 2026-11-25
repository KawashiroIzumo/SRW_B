/// @description 受击
var i;
i=actors_now
playdh_mbdmg=0.1
audio_play_sound(sound16_glass_break,1,0)
actors_sprite[!i]=global.robo_spr_hurt[global.mrobo_id[mrid[!i]]]
if(avl_special>=0)
{
    actors_sprite[!i]=global.robo_spr_defence[global.mrobo_id[mrid[!i]]]
    info_add(global.special_name[avl_special],!i)
}
actors_image[!i]=0
actors_image_speed[!i]=1
if(i==1)actors_direction[!i]=0
battlecam_speed=0


