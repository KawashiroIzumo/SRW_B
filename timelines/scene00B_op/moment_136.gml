/// @description 对话内容
qname="博丽灵梦"
qtext=@"哇啊啊啊啊啊啊，怎么了怎么了，
难道是老太婆你的仇家找上门来了吗？"
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

