/// @description 黑场消逝 人物创建
with(talk_scene)
{
    scene_bak=BK02_jjg
    
    i=56
    actor_alpha[i]=1
    actor_disappear[i]=0.05
    
    i=0
    actor_reset(i)
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=thca28_usami_stand
    actor_mirror[i]=1
    actor_x[i]=900
    actor_y[i]=400
    i=1
    actor_reset(i)
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=plo23_amuro_stand
    actor_x[i]=-400
    actor_y[i]=400
}

