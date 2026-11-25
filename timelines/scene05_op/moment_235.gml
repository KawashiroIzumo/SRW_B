///@description 阿姆罗对话内容
qname="阿姆罗"
qtext=@"既然你都叫我来办这种事情了，那么你应该是有准备机体吧？
#我很清楚我只有这种才能。
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
	actor_combo_nj[j]=1
}