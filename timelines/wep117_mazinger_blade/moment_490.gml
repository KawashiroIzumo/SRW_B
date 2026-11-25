///@description 声效
playdh_mbdmg=1
audio_play_sound(SE01_explosion06,1,0)
var i;
i=actors_now
pid=global.mrobo_pliot[mrid[!i]]
actors_change_dmg_text(pid,(global.mrobo_hp[mrid[!i]]-nowdmg)/global.robo_hp[global.mrobo_id[mrid[!i]]])
