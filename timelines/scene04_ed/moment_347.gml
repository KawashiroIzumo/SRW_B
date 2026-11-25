///@description 博丽真香对话内容
qname="博丽真香"
qtext=@"确实是没什么用。铁十字大概是
通过洗脑，药物，调教，严刑拷打等方式来彻底摧毁
人的精神意志，然后又通过类似于重装系统的方式，
在他们的脑海中重塑一种奇怪的逻辑。从而让普通人能够
完全不在意的突破自身的限制。
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