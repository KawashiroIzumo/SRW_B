/// @description 刘培茄对话内容
qname="刘培茄"
qtext=@".......这也太不靠谱了吧。
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


