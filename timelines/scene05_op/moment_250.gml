///@description 黑场
with(talk_scene)
{
    i=56
	actor_reset(i)
	actor_using(i)
    actor_sprite[i]=pcC_black
    actor_image_index[i]=0
    actor_mirror[i]=false
    actor_x[i]=0
    actor_y[i]=0
    actor_alpha[i]=0
    actor_disappear[i]=-0.05
}