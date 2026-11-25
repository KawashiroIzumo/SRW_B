/// @description JK对话内容
qname="宇佐见堇子"
qtext=@"站住，阿姆罗上尉，你想干什么。
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


