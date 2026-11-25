/// @description 刘培茄对话内容
qname="刘培茄"
qtext=@"哎呀，忘记问她为什么来地球了啊！！
"
qhead=po09_warwolf
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
     i=0
     actor_sprite[i]=plo09_warwolf_talk
     actor_combo_nj[i]=4
     actor_combo[i]=plo09_warwolf_stand
     i=1
     actor_reset(i)
     
}


