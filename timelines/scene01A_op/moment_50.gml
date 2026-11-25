/// @description 黑场
with(talk_scene)
{
    scene_bak=BK31_liaoningground_sky2
    scene_vx=0
    
    i=56
    actor_alpha[i]=1
    actor_disappear[i]=0.05
    
    i=0
    actor_reset(i)
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=thca26_maka_stand
    actor_combo[i]=noone
    actor_x[i]=300
    actor_mirror[i]=true
}

