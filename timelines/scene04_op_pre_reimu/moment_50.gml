///@description 黑场
with(talk_scene)
{
    scene_bak=BK56_dream
    
    i=56
    actor_alpha[i]=1
    actor_disappear[i]=0.05
    
    i=0
    actor_reset(i)
	actor_useing(i)
    actor_sprite[i]=thca00_reimu_move
    actor_mirror[i]=0
    actor_x[i]=-256
	actor_speed[i]=8
	actor_direction[i]=0
}