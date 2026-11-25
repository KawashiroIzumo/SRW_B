/// @description 受击
wepscript_hurt()

audio_play_sound(sound13_shiled003,1,false)
playdh_mbdmg=1
var i;
i=actors_now
pid=global.mrobo_pliot[mrid[!i]]
actors_change_dmg_text(pid,(global.mrobo_hp[mrid[!i]]-nowdmg)/global.robo_hp[global.mrobo_id[mrid[!i]]])


