/// @description 对话内容
qname="贤齐博士"
qtext=@"哎哟，你不要这么僵硬嘛，米斯蒂亚你知道吧，表面上是个机师，
暗地里还出了很多专辑的。"
qhead=po02_rxq
with(talk_scene)
{
    i=0
    actor_sprite[i]=plo00_wavebro_stand
}
a=create_dhk(qname,qtext,qhead)
a.eff=1

