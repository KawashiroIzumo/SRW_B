/// @description JK对话内容
qname="宇佐见堇子"
qtext=@"哎呀呀，阿姆罗上尉你知道么，周锦华上校他看谁不顺眼就会
把那个人叫到办公室里去让手下人揍他一顿哦。
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


