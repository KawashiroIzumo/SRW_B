/// @description 对话内容
qname="贤齐博士"
qtext=@"你不是开过MS吗？这台高达，一年战争那个时候的白色恶魔你知道吧？
这个就是加了附加装甲的同款！你开上它你也是白色恶魔。"
qhead=po02_rxq
with(talk_scene)
{
    i=0
    actor_sprite[i]=plo00_wavebro_stand
}
a=create_dhk(qname,qtext,qhead)
a.eff=1

