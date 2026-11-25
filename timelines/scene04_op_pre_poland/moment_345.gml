///@description 波澜哥对话内容
qname="波澜哥"
qtext=@"她消失了……？算了，反正是梦，出现什么都不稀奇。
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