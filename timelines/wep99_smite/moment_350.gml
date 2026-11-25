///@description 归位
var i;
i=actors_now
playdh_mbdmg=1
actors_speed[!i]=5
actors_direction[!i]=00
if(!i==0)actors_direction[!i]=180

actors_sprite[!i]=global.robo_spr_rdash[global.mrobo_id[mrid[!i]]]
audio_play_sound(sound39_gundam_dash,1,0)