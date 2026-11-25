///@description 红扎古出现
audio_play_sound(sound39_gundam_dash,1,0)
with(talk_scene)
{
	var j=5;
	actor_reset(j)
	actor_useing(j)
	actor_sprite[j]=robo13s00_rdash
	actor_image_index[j]=9
	actor_image_speed[j]=0
	actor_x[j]=1440
	actor_xs[j]=0.15
	actor_ys[j]=0.15
	actor_speed[j]=6
	actor_direction[j]=180
}