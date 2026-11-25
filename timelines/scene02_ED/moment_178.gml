/// @description 周锦华对话内容
qname="周锦华"
qtext=@"怎么回事，阿姆罗机体的重伤是什么情况？
他不是王牌吗！
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

