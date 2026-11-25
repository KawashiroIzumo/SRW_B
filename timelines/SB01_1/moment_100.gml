/// @description 感应 演出
a=instance_create(0,0,talk_scene)
audio_play_sound(SE02_onepoint24,1,0)
with(talk_scene)
{
    scene_bak=BK42_fly
    scene_mov=3
    i=0
    actor_reset(i)
    actor_useing(i)
    actor_sprite[i]=robo36s00_stand
    actor_x[i]=400
    actor_y[i]=400
    actor_mirror[i]=1
    
}


