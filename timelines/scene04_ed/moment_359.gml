///@description 博丽真香对话内容
qname="博丽真香"
qtext=@"声音波动系统经过弱化改造后可以作用于某些现实扭曲者。
#就和那位神奇陆夫人差不多吧，月都估计也有一位。
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