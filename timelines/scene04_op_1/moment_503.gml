///@description 刘培茄对话内容
qname="刘培茄"
qtext=@"……厉害，我完全不知道你们几句话能透出这么大信息量。
"
qhead=po09_warwolf
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
	var j=0;
	actor_sprite[j]=plo09_warwolf_talk
	actor_image_index[j]=0
	actor_combo[j]=plo09_warwolf_stand
	actor_combo_nj[j]=1
	
	j=5
	actor_sprite[j]=thca26_maka_stand
	actor_speed[j]=0
	actor_combo[j]=noone
}