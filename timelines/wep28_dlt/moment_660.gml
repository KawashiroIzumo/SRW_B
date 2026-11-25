var i;
flag_UI=true
actors_reset(4)
i=actors_now
actors_image_speed[!i]=0.5
bks_disappear[10]=0.05
nowdmg=dmg
nowdmg_ala=90
pid=global.mrobo_pliot[mrid[!i]]
actors_change_dmg_text(pid,(global.mrobo_hp[mrid[!i]]-nowdmg)/global.robo_hp[global.mrobo_id[mrid[!i]]])

