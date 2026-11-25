/// @description 对话内容
qname="徐晃博士"
qtext=@"[\a:75]他不是说他会开MS吗，待会把东西交给他，我们分开跑路就是了，铁十字怎么也不会想到我们把东西交给一个刚认识的人让他帮我们带走吧。
"
qhead=po11_xu_shake
with(talk_scene)
{
    i=1
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=plo01_xq_xrxtalk
    actor_combo_nj[i]=2
    actor_combo[i]=plo01_xq_stand
}

create_dhk(qname,qtext,qhead)

