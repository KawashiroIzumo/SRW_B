/// @description 博丽灵梦对话内容
qname="博丽灵梦"
qtext=@"蛤？那个家伙完全不靠谱啊！自己做的坏事让
女儿来顶缸已经不是一次两次了！这次要不是有巨额
报酬，我才不会做这玩意儿！
"
qhead=po04_RIMsis
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
     i=1
     actor_sprite[i]=thca00_reimu_talk
     actor_combo_nj[i]=4
     actor_combo[i]=thca00_reimu_stand
     i=0
     actor_sprite[i]=thca06_youmu_stand
     actor_combo[i]=noone
     
}


