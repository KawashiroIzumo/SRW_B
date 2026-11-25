/// @description 受击
audio_play_sound(sound17_se_tan00,1,0)
nowdmg=dmg
nowdmg_ala=90
playdh_mbdmg=1
flag_UI=true
var i;
i=actors_now
pid=global.mrobo_pliot[mrid[!i]]
actors_change_dmg_text(pid,(global.mrobo_hp[mrid[!i]]-nowdmg)/global.robo_hp[global.mrobo_id[mrid[!i]]])

actors_sprite[!i]=global.robo_spr_hurt[global.mrobo_id[mrid[!i]]]
if(avl_special>=0)
{
    actors_sprite[!i]=global.robo_spr_defence[global.mrobo_id[mrid[!i]]]
    info_add(global.special_name[avl_special],!i)
}
actors_image[!i]=5
actors_image_speed[!i]=0
actors_speed[!i]=0


