///@description 局座对话内容
qname="局座"
qtext=@"铁十字如果把这个公开的话，小堇的改革就很难继续了，周锦华的镇压派会占据上风。
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