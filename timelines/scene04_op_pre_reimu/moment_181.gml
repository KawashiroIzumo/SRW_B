///@description 123对话内容
qname="戴圣诞帽的少女"
qtext=@"啊哈，是作机师打扮的孩子呢！女机师很少见啊。
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