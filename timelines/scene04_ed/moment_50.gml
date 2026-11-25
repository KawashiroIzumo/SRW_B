///@description 黑场
with(talk_scene)
{
    scene_bak=BK42_fly
    scene_mov=-1
    
    i=56
    actor_alpha[i]=1
    actor_disappear[i]=0.05
    
    i=0
    actor_reset(i)
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=robo02s00_stand
    actor_mirror[i]=1
    actor_x[i]=200
    actor_y[i]=400
}