///@description 黑屏殴打
with(talk_scene)
{
    var i=56
    actor_reset(i)
	actor_useing(i)
    actor_sprite[i]=pcC_black
    actor_alpha[i]=1
    actor_image_index[i]=0
    actor_mirror[i]=false
    actor_x[i]=0
    actor_y[i]=0
}
audio_play_sound(voicesp01_battle,1,0)