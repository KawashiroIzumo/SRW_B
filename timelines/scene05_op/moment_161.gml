///@description 宇佐见堇子对话内容
qname="宇佐见堇子"
qtext=@"你从即日起升任上尉，调配到密封俱乐部执行秘密调查工作。
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
	actor_combo_nj[j]=2
}