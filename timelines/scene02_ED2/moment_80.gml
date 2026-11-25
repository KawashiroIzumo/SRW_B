/// @description 妖梦对话内容
qname="魂魄妖梦"
qtext=@"哇啊....这什么东西啊，怎么就浮在
空中了啊！
"
qhead=thh06_youmu
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
     i=1
     actor_sprite[i]=thca06_youmu_talk
     actor_combo_nj[i]=2
     actor_combo[i]=thca06_youmu_stand
     

}


