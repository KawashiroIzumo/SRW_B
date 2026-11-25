///@description 局座对话内容
qname="局座"
qtext=@"关于你情报的真实性嘛，我自然会再核实一遍。现在的话，反正闲着也是闲着，欢迎你在我们两艘船上逛逛，对了，你女儿博丽灵梦现在住辉针城上。
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