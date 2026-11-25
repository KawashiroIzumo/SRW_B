/// @description 博丽灵梦对话内容
qname="博丽灵梦"
qtext=@"emmmmm...这个家伙到底是单纯呢还是
阴阳术已经到了一定程度了呢.......
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


