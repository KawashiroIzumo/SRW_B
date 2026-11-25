///@description 波澜哥对话内容
qname="波澜哥"
qtext=@"我记得我们正在朝月球航行，啊对了，我刚刚是正在睡觉？
"
qhead=po00_bolan
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
	var j=0;
	actor_sprite[j]=plo00_wavebro_talk
	actor_image_index[j]=0
	actor_combo[j]=plo00_wavebro_stand
	actor_combo_nj[j]=2
}