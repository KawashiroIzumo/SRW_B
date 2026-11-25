/// @description 刘培茄对话内容
qname="刘培茄"
qtext=@"根据周锦华上校的指示，我们需要带着一些礼品前往吉翁共和国进行友好访问。
#今天就出发，各位有什么疑问吗？
"
qhead=po09_warwolf
with(talk_scene)
{
    i=1
    actor_sprite[i]=plo09_warwolf_talk
    actor_combo_nj[i]=2
    actor_combo[i]=plo09_warwolf_stand
}

create_dhk(qname,qtext,qhead)

