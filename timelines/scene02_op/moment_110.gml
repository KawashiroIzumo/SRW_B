/// @description 周锦华对话内容
qname="周锦华"
qtext=@"发生什么事了？？难道是AEUG打过来了？
士兵，守好门口，不要让任何人进来。然后通知
宇佐见中校，让她准备我的转移。
"
qhead=po14_choujh
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
     i=0
     actor_sprite[i]=plo14_zjh_talk
     actor_nj[i]=3
     acotr_combo[i]=plo14_zjh_stand
 
}

