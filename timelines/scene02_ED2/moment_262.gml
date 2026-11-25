/// @description 博丽灵梦对话内容
qname="博丽灵梦"
qtext=@"先说好了，没有售后！没有退保！要是坏了
，欢迎再次光临。
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


