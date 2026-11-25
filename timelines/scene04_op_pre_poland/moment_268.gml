///@description 波澜哥对话内容
qname="波澜哥"
qtext=@"[\\shock:1]你掀起波澜，揉碎了我～～
"
qhead=po00_bolan
create_dhk(qname,qtext,qhead)
audio_play_sound(sound36_highsound_laucher,1,0)
with(talk_scene)
{
	var j=0;
	actor_sprite[j]=plo00_wavebro_sing
	actor_image_index[j]=0
	actor_combo[j]=plo00_wavebro_sing
	actor_combo_nj[j]=1
	
	j=5
	actor_sprite[j]=thca40_doremi_hurt
	actor_combo[j]=noone
	actor_combo_nj[j]=-1
}