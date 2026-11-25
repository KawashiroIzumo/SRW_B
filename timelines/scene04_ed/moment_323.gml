///@description 博丽真香对话内容
qname="博丽真香"
qtext=@"声音波动系统可以制造无尽的能源，也可以直接意念造物，但是要启动这个的话需要某种素质，
#素质不够的人强行使用，就会变成橙汁船上那些鬼东西的样子。
"
qhead=thh26_hakurei_maka
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
	var j=0;
	actor_sprite[j]=plo09_warwolf_stand
	actor_combo[j]=noone
	
	j=5
	actor_sprite[j]=thca26_maka_talk
	actor_image_index[j]=0
	actor_combo[j]=thca26_maka_stand
	actor_combo_nj[j]=1
}