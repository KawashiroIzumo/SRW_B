/// @description JK对话内容
qname="宇佐见堇子"
qtext=@"上校，使徒击退作战已经完成。以下是作战损失:....
阿姆罗·雷上尉的MS受到重创.........以上就是此次作战的
全部报告了。
"
qhead=thh28_usami_sumireko
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
     i=0
     actor_sprite[i]=thca28_usami_talk
     actor_combo_nj[i]=4
     actor_combo[i]=thca28_usami_stand
     i=1
     actor_sprite[i]=plo14_zjh_stand
}


