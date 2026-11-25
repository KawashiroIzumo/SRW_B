///@description 123对话内容
qname="戴圣诞帽的少女"
qtext=@"好吧，欢迎来到月球轨道。对了，不知道你家的实验室叫什么名字呢？
"
qhead=thh40_doremi
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
	var j=0;
	actor_sprite[j]=thca00_reimu_stand
	actor_combo_nj[j]=-1
	actor_combo[j]=noone
	
	j=5
	actor_sprite[j]=thca40_doremi_talk
	actor_image_index[j]=0
	actor_combo[j]=thca40_doremi_stand
	actor_combo_nj[j]=1
}