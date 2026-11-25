/// @description JK对话内容
qname="宇佐见堇子"
qtext=@"而且那个人啊，完全不会在意手下人的想法，
就像是个傻...咳咳，嘛，反正我会给你一个交代的啦。
能不能请你先回去修整一下呢。
"
qhead=thh28_usami_sumireko
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
     i=0
     actor_sprite[i]=thca28_usami_talk
     actor_combo_nj[i]=2
     actor_combo[i]=thca28_usami_stand
     i=1
     actor_sprite[i]=plo23_amuro_stand
}


