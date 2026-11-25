/// @description 对话内容
qname="博丽灵梦"
qtext="我的意思是，得加钱。没我不敢做的事好吧！"
qhead=po04_RIMsis
with(talk_scene)
{
    i=0
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=thca00_reimu_talk
    actor_combo_nj[i]=2
    actor_combo[i]=thca00_reimu_stand
    i=1
    actor_sprite[i]=thca26_maka_stand
}

create_dhk(qname,qtext,qhead)

