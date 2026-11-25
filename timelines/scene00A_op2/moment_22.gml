/// @description 对话内容
qname="贤齐博士"
qtext=@"但是！你有能力去操纵这个武器，我们刚刚对数据做了一些处理，但铁十字
那边过不了多久就会发现你是适配者了。你要走，还要有保护自己的力量。不然
你就做好被铁十字囚禁的准备吧。"
qhead=po02_rxq
with(talk_scene)
{
    i=0
    actor_sprite[i]=plo00_wavebro_stand
}
a=create_dhk(qname,qtext,qhead)
a.eff=1

