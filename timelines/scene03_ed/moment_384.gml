/// @description SEELE对话内容
qname="SEELE"
qtext=@"…………好吧，就结果而言，算是好事。
#周锦华，我们要说的事情正好和铁十字相关，我们调查到铁十字正在和一种外星的金属生命体进行联系。
"
qhead=po14S_seele06
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=1
    actor_sprite[i]=plo14_zjh_stand
    actor_combo[i]=noone
}

