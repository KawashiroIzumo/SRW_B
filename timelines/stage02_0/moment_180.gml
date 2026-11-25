/// @description 地图炮演出
a=instance_create(0,0,talk_scene)
global.bgm=BGMsrw12_super_marisa
with(talk_scene)
{
    i=0
    actor_reset(i)
    actor_active[i]=1
    actor_play[i]=1
    actor_enable[i]=1
    actor_sprite[i]=robo24s00_masterspark_cutin
    actor_x[i]=640
    actor_y[i]=360
}


