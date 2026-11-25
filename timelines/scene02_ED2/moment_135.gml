/// @description 陆夫人对话内容
qname="神奇陆夫人"
qtext=@"啊！！！！！好痛！！！！！
"
qhead=po13_ladylu
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
     i=1
     actor_sprite[i]=thca06_youmu_stand
     actor_combo[i]=noone
     i=0
     actor_sprite[i]=plo09_warwolf_stand
     actor_combo[i]=noone

}


