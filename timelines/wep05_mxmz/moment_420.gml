/// @description 受击
var i;
i=actors_now

j=8
actors_sprite[j]=global.robo_spr_hurt[global.mrobo_id[mrid[!i]]]
if(avl_special>=0)
{
    actors_sprite[j]=global.robo_spr_defence[global.mrobo_id[mrid[!i]]]
    info_add(global.special_name[avl_special],!i)
}
actors_image[j]=0
actors_image[7]-=1
actors_image_speed[7]=0.5
actors_image_speed[j]=1
battlecam_speed=0
actors_change_dmg_text(pid,(global.mrobo_hp[mrid[!i]]-nowdmg)/global.robo_hp[global.mrobo_id[mrid[!i]]])

