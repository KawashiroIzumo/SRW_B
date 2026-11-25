/// @description 周锦华对话内容
qname="周锦华"
qtext=@"啊，这个……这个………[\xys:50]高达头他不香吗？
"
qhead=po14_choujh
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=1
    actor_sprite[i]=plo14_zjh_talk
    actor_combo_nj[i]=2
    actor_combo[i]=plo14_zjh_stand
}

