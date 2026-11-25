///@description 博丽真香对话内容
qname="博丽真香"
qtext=@"是的，那就是他们胡乱尝试利用声音波动系统的“成果”。但是，以我手头的技术并没有精准检测这种资质的方法。
#并且这种资质非常少见，以铁十字的人口基数也只有寥寥几个人拥有资质，比新人类比例可是低多了。
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