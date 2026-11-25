///@description 波澜哥对话内容
qname="博丽灵梦"
qtext=@"我记得我们正在朝月球航行，在这个节骨眼上做了这么奇怪的清醒梦，看来别有阴谋啊，我得注意点。
"
qhead=po04_RIMsis
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
	var j=0;
	actor_sprite[j]=thca00_reimu_talk
	actor_image_index[j]=0
	actor_combo[j]=thca00_reimu_stand
	actor_combo_nj[j]=3
}