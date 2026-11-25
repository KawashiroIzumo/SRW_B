///@description 博丽灵梦对话内容
qname="博丽灵梦"
qtext=@"切，神出鬼没的家伙。
#无所谓啦，还是来做一个我在一整房间的金币堆中洗澡的梦吧！
"
qhead=po04_RIMsis
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
	var j=0;
	actor_speed[j]=0
	actor_sprite[j]=thca00_reimu_talk
	actor_image_index[j]=0
	actor_combo[j]=thca00_reimu_stand
	actor_combo_nj[j]=2
}