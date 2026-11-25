///@description 播放声音
audio_play_sound(SE01_explosion06,1,0)
playdh_mbdmg=1
actors_change_dmg_text(pid,(global.mrobo_hp[mrid[!i]]-nowdmg)/global.robo_hp[global.mrobo_id[mrid[!i]]])
nowdmg=dmg
nowdmg_ala=90