/// @description 周锦华对话内容
qname="周锦华"
qtext=@"什么！算了，他要去送死就去吧，
宇佐见中校，立刻准备好强袭登陆舰，我要转移
到安全的地方指挥。
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

