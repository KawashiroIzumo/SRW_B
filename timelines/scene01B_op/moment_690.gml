/// @description 移动
with(talk_scene)
{
    scene_bak=BK42_fly
    scene_vx=0
    scene_mov=3
    
    i=0
    actor_reset(i)
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=1
    actor_sprite[i]=fx02_jitps
    actor_combo[i]=noone
    actor_x[i]=900
    i=1
    actor_reset(i)
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=1
    actor_sprite[i]=robo01s00_fly
    actor_combo[i]=noone
    actor_x[i]=900
}

