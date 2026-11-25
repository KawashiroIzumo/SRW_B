///@description 宇佐见堇子对话内容
qname="宇佐见堇子"
qtext=@"以你目前的身份不适合开着海兹尔那种高达型的ms出场。
#随我来吧，我给你介绍一位老朋友。
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