/// @description 警报
global.bgm=BGMsrw19_Evil_Incoming
audio_play_sound(SE25_warning,1,0)
with(talk_scene)
{
    i=0
    actor_sprite[i]=plo31_liuxing_stand
	actor_speed[i]=0
    actor_combo[i]=noone
    i=1
    actor_sprite[i]=plo32_police_stand
	actor_speed[i]=0
    actor_combo[i]=noone
    i=2
    actor_sprite[i]=plo32_police_stand
	actor_speed[i]=0
    actor_combo[i]=noone
	
	i=3
    actor_sprite[i]=plo33_feifan_stand
	actor_speed[i]=0
    actor_combo[i]=noone
}

