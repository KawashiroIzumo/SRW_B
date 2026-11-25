///@description 博丽灵梦对话内容
qname="博丽灵梦"
qtext=@"首先，我想来找几个不长眼的小混混算账。然后，我想要借这个机会挣钱，重建我家的实验室。
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
	
	j=5
	actor_sprite[j]=thca40_doremi_stand
	actor_combo[j]=noone
	actor_combo_nj[j]=-1
}