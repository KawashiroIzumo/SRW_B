/// @description 地图炮演出
a=instance_create(0,0,talk_scene)
global.bgm=BGMsrw22_tamashi_no_kae
with(talk_scene)
{
    i=0
    actor_reset(i)
    actor_active[i]=1
    actor_play[i]=1
    actor_enable[i]=1
    actor_sprite[i]=anCG04_reimu_nmsl
    actor_x[i]=640
    actor_y[i]=360
	actor_image_speed[i]=0.5
    scene_bak=BK46_sky_earth
}
audio_play_sound(sound145_machinegun00,1,1)