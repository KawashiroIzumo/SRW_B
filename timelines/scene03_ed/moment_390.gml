/// @description 周锦华对话内容
qname="周锦华"
qtext=@"嗯，嗯……是的……
#我这就安排海兹尔部队……
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

