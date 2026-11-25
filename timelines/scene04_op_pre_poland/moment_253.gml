///@description 123对话内容
qname="戴圣诞帽的少女"
qtext=@"警觉性还真高呢。你这一趟是来干什么的？这里是你的梦境，没人能对自己说谎哦。
"
qhead=thh40_doremi
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
	var j=0;
	actor_sprite[j]=plo00_wavebro_stand
	actor_combo_nj[j]=-1
	actor_combo[j]=noone
	
	j=5
	actor_sprite[j]=thca40_doremi_talk
	actor_image_index[j]=0
	actor_combo[j]=thca40_doremi_stand
	actor_combo_nj[j]=2
}