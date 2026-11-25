///@description 博丽真香对话内容
qname="博丽真香"
qtext=@"嗯，的确有副作用，毕竟声音波动系统的核心是使灵魂物质化。不过……
#第一，对于拥有资质的人是没有副作用的。
#第二，控制出力的话，最多就是头疼一会就好了。
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