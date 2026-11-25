///@description 局座对话内容
qname="局座"
qtext=@"小堇远在提坦斯，基本上就是在周锦华的鼻子底下，在通讯中遮遮掩掩才是正常情况
#其实我们和小堇的交流中，她眼镜上的反光正好组成了莫尔斯电码。
#至于能解析莫尔斯电码的人嘛……目前整个联邦也正好只有我这个老古董。
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