/// @description 黑场
global.bgm=BGMsrw19_Evil_Incoming
with(talk_scene)
{
    scene_bak=BK50_SEELE
    scene_vx=0
    scene_mov=0
    i=56
    actor_alpha[i]=1
    actor_disappear[i]=0.05
    
    i=1
    actor_reset(i)
    actor_useing(i)
    actor_sprite[i]=plo14_zjh_stand
    actor_x[i]=640
    i=2
    actor_reset(i)
}

