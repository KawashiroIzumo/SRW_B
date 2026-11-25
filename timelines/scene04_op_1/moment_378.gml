///@description 博丽真香对话内容
qname="博丽真香"
qtext=@"如果配套设施建设完毕的话，这把狙的射程足以从月球打到地球呢，当然精度无法保证。
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