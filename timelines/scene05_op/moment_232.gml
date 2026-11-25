///@description 宇佐见堇子对话内容
qname="宇佐见堇子"
qtext=@"稍后我会将那家医院的地址交给你，但是呢……
#我需要你去那里帮我捞一个人。
"
qhead=thh28_usami_sumireko
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
	var j=1;
	actor_sprite[j]=plo23_amuro_stand
	actor_combo[j]=noone
	
	j=0
	actor_sprite[j]=thca28_usami_talk
	actor_image_index[j]=0
	actor_combo[j]=thca28_usami_stand
	actor_combo_nj[j]=3
}