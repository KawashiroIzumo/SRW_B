///@description 红扎古出现*黑场
audio_play_sound(sound39_gundam_dash,1,0)
with(talk_scene)
{
	var j=5;
	actor_sprite[j]=robo13s00_rdash
	actor_image_index[j]=9
	actor_image_speed[j]=0
	actor_speed[j]=6
	actor_direction[j]=180
	
	j=56
    actor_reset(j)
	actor_useing(j)
    actor_sprite[j]=pcC_black
    actor_alpha[j]=0
    actor_disappear[i]=-0.02
    actor_x[i]=0
    actor_y[i]=0
}