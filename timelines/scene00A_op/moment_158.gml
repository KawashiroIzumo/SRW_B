/// @description 对话内容
qname="贤齐博士"
qtext=@"[\a:75]这样吧，我们不是做了个假货吗。把真货安装在机体内，我们带着假货跑吧。
"
qhead=po02_rxq
with(talk_scene)
{
    i=1
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=plo01_xq_rxqtalk
    actor_combo_nj[i]=2
    actor_combo[i]=plo01_xq_stand
}

create_dhk(qname,qtext,qhead)

