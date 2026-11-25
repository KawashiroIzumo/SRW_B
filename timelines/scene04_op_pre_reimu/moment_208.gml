///@description 八云紫入场
with(talk_scene)
{
	var j=7;
	actor_reset(j)
	actor_useing(j)
	actor_x[j]=actor_x[5]-256
	actor_sprite[j]=thca18_yukari_output
	actor_image_index[j]=0
	actor_combo[j]=thca18_yukari_stand
	actor_combo_nj[j]=0
}