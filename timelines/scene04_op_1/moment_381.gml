///@description 局座对话内容
qname="局座"
qtext=@"嗬，有这个射程的话，他们也不需要有多高的精度。随时可能杀伤平民的光束炮本身就是一种威慑。
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