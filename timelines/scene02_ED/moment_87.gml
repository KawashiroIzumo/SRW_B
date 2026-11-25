/// @description 阿姆罗对话内容
qname="阿姆罗·雷"
qtext=@"呃...........
"
qhead=po23_amuro
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
     i=1
     actor_sprite[i]=plo23_amuro_talk
     actor_combo_nj[i]=1
     actor_combo[i]=plo23_amuro_stand
     i=0
     actor_sprite[i]=thca28_usami_stand
}


