/// @description 对话内容
qname="红博士"
qtext="[\\a:75]不行，我们完全不知道他是什么样的人，不能这么相信他。"
qhead=po03_littleredred
with(talk_scene)
{
    i=1
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=plo01_xq_redtalk
    actor_combo_nj[i]=2
    actor_combo[i]=plo01_xq_stand
}

create_dhk(qname,qtext,qhead)

