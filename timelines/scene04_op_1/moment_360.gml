///@description 博丽真香对话内容
qname="博丽真香"
qtext=@"为了营造良好的改革环境，自然是需要安全的外部条件吧？至少地球圈周边相对和平还是非常重要的不是吗？
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