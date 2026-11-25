/// @description 周锦华对话内容
qname="周锦华"
qtext=@"那个啊……嗯嗯……（堇子给我的纸条……）
#啊，对，那个是我的计策，嗯。
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

