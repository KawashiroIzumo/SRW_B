///@description 宇佐见堇子对话内容
qname="宇佐见堇子"
qtext=@"她虽然活了下来……但是被光剑直击的声光效果却让她相信她死了
#现在她的灵魂飘荡在宇宙中，而身体我安排信得过的医院照顾着。
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