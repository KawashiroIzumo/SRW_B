/// @description JK对话内容
qname="宇佐见堇子"
qtext=@"哎呀呀，真有你的啊周锦华，这种事情上
都敢贪污一笔，总有一天我要把你撒了，骨灰都给
你扬咯！
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


