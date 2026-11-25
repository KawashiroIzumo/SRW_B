/// @description 对话内容
qname="博丽灵梦"
qtext="！？*博丽粗口*"
qhead=po04_RIMsis
with(talk_scene)
{
    i=0
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=thca00_reimu_talk
    actor_combo_nj[i]=1
    actor_combo[i]=thca00_reimu_stand
    i=1
    actor_sprite[i]=thca26_maka_stand
}

create_dhk(qname,qtext,qhead)

