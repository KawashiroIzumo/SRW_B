/// @description 黑场
with(talk_scene)
{
    scene_bak=BK42_fly
    scene_vx=0
    scene_mov=3
    
    i=56
    actor_alpha[i]=1
    actor_disappear[i]=0.05
    
    i=0
    actor_reset(i)
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=1
    actor_sprite[i]=fx02_jitps
    actor_combo[i]=noone
    actor_x[i]=800+128
    actor_mirror[i]=false
    i=1
    actor_reset(i)
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=false
    actor_sprite[i]=robo16s00_stand
    actor_combo[i]=noone
    actor_x[i]=800
    actor_mirror[i]=false
}

