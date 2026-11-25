///@description 黑场
with(talk_scene)
{
    scene_bak=BK02_jjg
    
    i=56
    actor_alpha[i]=1
    actor_disappear[i]=0.05
    
    i=0
    actor_reset(i)
	actor_useing(i)
    actor_sprite[i]=thca28_usami_TKmove
    actor_mirror[i]=0
    actor_x[i]=-256
    i=1
    actor_reset(i)
	actor_useing(i)
    actor_sprite[i]=plo23_amuro_move
    actor_mirror[i]=0
    actor_x[i]=-768
    actor_y[i]=480
    i=2
    actor_reset(i)
	actor_useing(i)
    actor_sprite[i]=plo37_koji_stand
    actor_mirror[i]=1
    actor_x[i]=1024
}