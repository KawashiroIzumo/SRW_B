/// @description 对话内容
qname="贤齐博士"
qtext=@"其实，这个比赛是铁十字为了寻找新型武器使用者才举行的，
这个选拔赛不可能让你成为歌星的。"
qhead=po02_rxq
with(talk_scene)
{
    i=0
    actor_sprite[i]=plo00_wavebro_stand
}
a=create_dhk(qname,qtext,qhead)
a.eff=1

