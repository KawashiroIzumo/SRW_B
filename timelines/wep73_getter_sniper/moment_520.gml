var i;
i=actors_now
audio_play_sound(SE01_explosion06,1,false)
playdh_mbdmg=1
pid=global.mrobo_pliot[mrid[!i]]
actors_change_dmg_text(pid,(global.mrobo_hp[mrid[!i]]-nowdmg)/global.robo_hp[global.mrobo_id[mrid[!i]]])

