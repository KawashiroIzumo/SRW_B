///@description 动画终点2
var i;
actors_reset(4)
actors_reset(7)
actors_reset(8)
i=actors_now
actors_alpha[!i]=1
actors_image[!i]=5
actors_image_speed[!i]=0.5
actors_speed[!i]=0
flag_UI=true
pid=global.mrobo_pliot[mrid[!i]]
actors_change_dmg_text(pid,(global.mrobo_hp[mrid[!i]]-nowdmg)/global.robo_hp[global.mrobo_id[mrid[!i]]])
nowdmg=dmg
nowdmg_ala=90

