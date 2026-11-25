/// @description 妖梦对话内容
qname="魂魄妖梦"
qtext=@"嗯.....如果是这样的话，那就
没什么问题了，我可以加入你们。
"
qhead=thh06_youmu
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
     i=1
     actor_sprite[i]=thca06_youmu_talk
     actor_combo_nj[i]=2
     actor_combo[i]=thca06_youmu_stand
     i=0
     actor_sprite[i]=plo09_warwolf_stand
     actor_combo[i]=noone
     

}


