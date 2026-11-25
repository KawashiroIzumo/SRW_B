///@description 博丽灵梦对话内容
qname="博丽灵梦"
qtext=@"紫？原来我做梦你也在监视吗？？
"
qhead=po04_RIMsis
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
	var j=0;
	actor_speed[j]=0
	actor_sprite[j]=thca00_reimu_talk
	actor_image_index[j]=0
	actor_combo[j]=thca00_reimu_stand
	actor_combo_nj[j]=2
	
	j=7
	actor_sprite[j]=thca18_yukari_stand
	actor_combo[j]=noone
	actor_combo_nj[j]=-1
}