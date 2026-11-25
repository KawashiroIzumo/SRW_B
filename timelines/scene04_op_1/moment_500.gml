///@description 局座对话内容
qname="局座"
qtext=@"这是直接原因，但是本质上，我们之所以大张旗鼓的这么搞，当然是为了小堇
#只有当周锦华把全部的注意力都放在我们身上，小堇才有充足的机会准备改革。
"
qhead=po08_juzuo
a=create_dhk(qname,qtext,qhead)
a.eff=1
with(talk_scene)
{
	var j=0;
	actor_sprite[j]=plo09_warwolf_stand
	actor_combo[j]=noone
	
	j=5
	actor_sprite[j]=thca26_maka_stand
	actor_speed[j]=0
	actor_combo[j]=noone
}