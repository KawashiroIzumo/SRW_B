///@description 活动身体
var i;
i=actors_now
actors_image_speed[!i]=1
battlecam_speed=0
actors_reset(7)

pid=global.mrobo_pliot[mrid[!i]]
actors_change_dmg_text(pid,(global.mrobo_hp[mrid[!i]]-nowdmg)/global.robo_hp[global.mrobo_id[mrid[!i]]])
