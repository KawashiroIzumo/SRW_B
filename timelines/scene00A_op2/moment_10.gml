/// @description 对话内容
qname="贤齐博士"
qtext="我是贤齐，接下来我要说的事情，你不要害怕。"
qhead=po02_rxq
with(talk_scene)
{
    i=0
    actor_sprite[i]=plo00_wavebro_stand
}
a=create_dhk(qname,qtext,qhead)
a.eff=1

