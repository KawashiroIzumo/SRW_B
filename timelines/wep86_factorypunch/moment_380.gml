audio_play_sound(sound5_Earth6,1,false)
audio_play_sound(sound15_shiled002,1,false)
playdh_mbdmg=1playdh_mbdmg=1

pid=global.mrobo_pliot[mrid[!i]]
actors_change_dmg_text(pid,(global.mrobo_hp[mrid[!i]]-nowdmg)/global.robo_hp[global.mrobo_id[mrid[!i]]])
