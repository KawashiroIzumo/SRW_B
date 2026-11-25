/// @description 黑场消逝 人物创建
with(talk_scene)
{
    scene_bak=BK47_nerv_TT
    scene_vx=1
    
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
    actor_x[i]=-300
    actor_y[i]=400
    i=1
    actor_reset(i)
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=plo14_zjh_stand
    actor_mirror[i]=1
    actor_x[i]=800
    actor_y[i]=300
}

