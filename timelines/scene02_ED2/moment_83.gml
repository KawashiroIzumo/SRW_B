/// @description 刘培茄对话内容
qname="刘培茄"
qtext=@"他是之前那个对使徒兵器的驾驶员，不过他本人现在
在NERV的培养基里面接受治疗。
"
qhead=po09_warwolf
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
     i=0
     actor_sprite[i]=plo09_warwolf_talk
     actor_combo_nj[i]=2
     actor_combo[i]=plo09_warwolf_stand
     i=1
     actor_sprite[i]=thca06_youmu_stand
     actor_combo[i]=noone
     
}


