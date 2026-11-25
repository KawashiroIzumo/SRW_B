/// @description 博丽灵梦对话内容
qname="博丽灵梦"
qtext=@"东西我已经帮你做好了，虽然不知道那个东西
到底有什么用，可是我先警告你啊，别拿去做什么坏事啊，
不然作为制造者的我肯定会被抓进去的！！
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


