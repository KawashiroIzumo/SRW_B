/// @description 陆夫人对话内容
qname="神奇陆夫人"
qtext=@"哎？？？？等下，我要见Pi！！！！
我怎么就成了驾驶员了！！！！Pi你算计我！！
Pi！！！！
"
qhead=po13_ladylu
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
     i=1
     actor_sprite[i]=thca06_youmu_stand
     i=0
     actor_sprite[i]=plo09_warwolf_stand
     actor_combo[i]=noone

}


