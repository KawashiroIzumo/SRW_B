/// @description SEELE对话内容
qname="SEELE"
qtext=@"我们认为这种金属生命体会对人类补完计划造成影响。
#所以，有必要将他们彻底清除。
#你不是号称用兵如神吗？消灭区区一个铁十字自治邦还是做得到的吧？
"
qhead=po14S_seele06
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=1
    actor_sprite[i]=plo14_zjh_stand
    actor_combo[i]=noone
}

