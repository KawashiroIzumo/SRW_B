/// @description JK对话内容
qname="宇佐见堇子"
qtext=@"发生冲击之后就已经为您准备好了，现在
就可以进行转移了。
"
qhead=thh28_usami_sumireko
a=create_dhk(qname,qtext,qhead)
a.eff=1
with(talk_scene)
{
     i=0
     actor_sprite[i]=plo14_zjh_stand

}


