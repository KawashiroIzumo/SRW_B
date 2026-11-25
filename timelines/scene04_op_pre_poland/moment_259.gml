///@description 123对话内容
qname="戴圣诞帽的少女"
qtext=@"（看来是普通游客罢了，不过倒是可以听听他的歌）
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
	actor_sprite[j]=thca40_doremi_stand
	actor_image_index[j]=0
	actor_combo[j]=thca40_doremi_stand
	actor_combo_nj[j]=2
}