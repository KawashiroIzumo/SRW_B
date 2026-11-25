///@description 123对话内容
qname="戴圣诞帽的少女"
qtext=@"放轻松，这里是你的梦境。我自然是你梦里面的角色，比如梦中情人之类的。
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