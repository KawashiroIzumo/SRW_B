/// @description 周锦华对话内容
qname="周锦华"
qtext=@"混蛋！！！！宇佐见中校，这件事
就由你全权负责，处理好之后整理一份
报告给我！！
"
qhead=po14_choujh
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
     i=1
     actor_sprite[i]=plo14_zjh_talk
     actor_nj[i]=4
     acotr_combo[i]=plo14_zjh_stand
     i=0
     actor_spriter[i]=thca28_usami_stand
 
}

