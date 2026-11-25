///@description 波澜哥对话内容
qname="波澜哥"
qtext=@"还是来做一个我出演电视剧男一号的梦吧，《暗剑》之类的。
"
qhead=po00_bolan
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
	var j=0;
	actor_sprite[j]=plo00_wavebro_talk
	actor_image_index[j]=0
	actor_combo[j]=plo00_wavebro_stand
	actor_combo_nj[j]=1
}