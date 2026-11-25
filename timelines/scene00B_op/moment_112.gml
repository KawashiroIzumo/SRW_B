/// @description 对话内容
qname="博丽灵梦"
qtext="嘛....就是用结构把一座城堡顶起来的战舰啦..."
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
}

create_dhk(qname,qtext,qhead)

