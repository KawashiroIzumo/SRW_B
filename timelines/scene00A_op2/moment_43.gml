/// @description 对话内容
qname="贤齐博士"
qtext=@"这样吧，你把高达里的货送到[\c:114514]site.4 殖民卫星
[\c:16777215]这的一个研究所里面，我就把这个高达送给你行吧。"
qhead=po02_rxq
with(talk_scene)
{
    i=0
    actor_sprite[i]=plo00_wavebro_stand
}
a=create_dhk(qname,qtext,qhead)
a.eff=1

