///@description 刘培茄对话内容
qname="刘培茄"
qtext=@"我们跟着周锦华干的话，以他胡来的作风，早晚要被下达送死命令吧？
#难道不是这个原因？
"
qhead=po09_warwolf
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
	var j=0;
	actor_sprite[j]=plo09_warwolf_talk
	actor_image_index[j]=0
	actor_combo[j]=plo09_warwolf_stand
	actor_combo_nj[j]=1
	
	j=5
	actor_sprite[j]=thca26_maka_stand
	actor_speed[j]=0
	actor_combo[j]=noone
}