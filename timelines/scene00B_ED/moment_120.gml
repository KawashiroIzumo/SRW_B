/// @description 对话内容
qname="博丽灵梦"
qtext=@"这是要命的差事啊，你看这回来的那些人比联邦本部
那群新兵蛋子强多了。那门炮那里可能有比这群人还狠的人在
呢。"
qhead=po04_RIMsis
with(talk_scene)
{
    i=0
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=thca00_reimu_talk
    actor_combo_nj[i]=4
    actor_combo[i]=thca00_reimu_stand
    i=1
    actor_sprite[i]=thca26_maka_stand
}

create_dhk(qname,qtext,qhead)

