///@description 波澜哥对话内容
qname="波澜哥"
qtext=@"想干什么……我想回家，我想过安稳的生活，对了，我还要成为非常有名的歌星。
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
	
	j=5
	actor_sprite[j]=thca40_doremi_stand
	actor_combo[j]=noone
	actor_combo_nj[j]=-1
}