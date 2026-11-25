///@description 博丽真香对话内容
qname="博丽真香"
qtext=@"周锦华的手下对宇宙居民的压制非常令人不齿，我们自然得另外找一个靠山。正好小姑娘想要以提坦斯为引子整肃联邦政府，那我自然是支持的啦。
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