///@description 跳起
audio_play_sound(SE12_gundam_joint,1,0)
audio_play_sound(sound39_gundam_dash,1,0)

var i;
i=actors_now
pid=global.mrobo_pliot[mrid[!i]]
actors_change_dmg_text(pid,(global.mrobo_hp[mrid[!i]]-nowdmg)/global.robo_hp[global.mrobo_id[mrid[!i]]])
nowdmg=dmg
nowdmg_ala=90
