/// @description 周锦华对话内容
qname="周锦华"
qtext=@"不行，我不允许阿姆罗出动！
让其他人去就可以了，阿姆罗不能出动。
"
qhead=po14_choujh
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
     i=0
     actor_sprite[i]=plo14_zjh_talk
     actor_nj[i]=2
     acotr_combo[i]=plo14_zjh_stand
 
}

