i=10
bks_disappear[i]=0.05
nowdmg=dmg
nowdmg_ala=90
var i;
i=actors_now
actors_sprite[!i]=global.robo_spr_stand[global.mrobo_id[mrid[!i]]]
actors_image_speed[!i]=1
if(avl_special>=0)
{  
    info_add(global.special_name[avl_special],!i)
}
playdh_mbdmg=1

