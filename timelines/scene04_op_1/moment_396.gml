///@description 局座对话内容
qname="局座"
qtext=@"我记得博丽研究所曾遭到不明来源的光束炮击而大破，这么看来光束的来源多半就是月球。
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