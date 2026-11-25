/// @description 妖梦对话内容
qname="魂魄妖梦"
qtext=@"不会的.......还有，那个东西不是你的母亲
让你做的吗？怎么会是危险的东西？
"
qhead=thh06_youmu
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
     i=1
     actor_sprite[i]=thca00_reimu_stand
     actor_combo[i]=noone
     i=0
     actor_sprite[i]=thca06_youmu_talk
     actor_combo_nj[i]=2
     actor_combo[i]=thca06_youmu_stand
     

}


