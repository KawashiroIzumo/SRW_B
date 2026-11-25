/// @description 受击
var i;
i=actors_now
audio_play_sound(sound42_laser,1,0)
audio_play_sound(sound13_shiled003,1,false)
playdh_mbdmg=0.15
actors_sprite[!i]=global.robo_spr_hurt[global.mrobo_id[mrid[!i]]]
if(avl_special>=0)
{
    actors_sprite[!i]=global.robo_spr_defence[global.mrobo_id[mrid[!i]]]
    info_add(global.special_name[avl_special],!i)
}
actors_image[!i]=0
actors_image_speed[!i]=1
actors_speed[!i]=0
battlecam_speed=0


pid=global.mrobo_pliot[mrid[!i]]
actors_change_dmg_text(pid,(global.mrobo_hp[mrid[!i]]-nowdmg)/global.robo_hp[global.mrobo_id[mrid[!i]]])


