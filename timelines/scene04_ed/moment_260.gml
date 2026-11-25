///@description 黑场
with(talk_scene)
{
    scene_bak=BK57_tearoom_universal
    scene_mov=0
	scene_vx=0
    
    i=56
    actor_alpha[i]=1
    actor_disappear[i]=0.05
    
    i=0
    actor_reset(i)
	actor_useing(i)
    actor_sprite[i]=plo09_warwolf_stand
    actor_mirror[i]=1
    actor_x[i]=768
	
	i=5
	actor_reset(i)
	actor_useing(i)
	actor_sprite[i]=thca26_maka_run
    actor_mirror[i]=0
    actor_x[i]=-256
	actor_speed[i]=10
	actor_direction[i]=0
}