/// @description 重置
var i;
i=actors_now
j=7
actors_image_speed[j]=0.5
actors_reset(40)
flag_UI=true
actors_change_dmg_text(pid,(global.mrobo_hp[mrid[!i]]-nowdmg)/global.robo_hp[global.mrobo_id[mrid[!i]]])

