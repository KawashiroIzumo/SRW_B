///@description 局座对话内容
qname="局座"
qtext=@"那是一年战争时期，吉翁军做实验用的巨型炮座而已，比目前所有的战舰主炮都要大，射程也更远。
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