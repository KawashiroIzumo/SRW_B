/// @description 周锦华对话内容
qname="周锦华"
qtext=@"也就是说机体出现了问题？？？
"
qhead=po14_choujh
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
     i=1
     actor_sprite[i]=plo14_zjh_talk
     actor_nj[i]=2
     acotr_combo[i]=plo14_zjh_stand
     i=0
     actor_spriter[i]=thca28_usami_stand
 
}

