/// @description JK对话内容
qname="宇佐见堇子"
qtext=@"呃......上校....阿姆罗上尉机体
的受损从机体上记录的情报来看，阿姆罗上尉
攻击时受到反作用力，这股力摧毁了右部的
关节连接处。
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


