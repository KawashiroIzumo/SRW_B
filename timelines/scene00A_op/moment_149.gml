/// @description 对话内容
qname="红博士"
qtext="[\\a:75]那我们待会删库跑路的时候还得带上他？"
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

