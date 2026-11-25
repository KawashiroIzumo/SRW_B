///@description 阿姆罗对话内容
qname="阿姆罗"
qtext=@"那倒是最好……不过我不会上宇宙的。
"
qhead=po23_amuro
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
	var j=0;
	actor_sprite[j]=thca28_usami_stand
	actor_combo[j]=noone
	
	j=1
	actor_sprite[j]=plo23_amuro_talk
	actor_image_index[j]=0
	actor_combo[j]=plo23_amuro_stand
	actor_combo_nj[j]=2
}