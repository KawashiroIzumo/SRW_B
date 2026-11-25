/// @description 对话内容
qname="红博士"
qtext="请"
qhead=po03_littleredred
with(talk_scene)
{
    i=0
    actor_sprite[i]=plo00_wavebro_stand
    actor_combo[i]=noone
    
    i=1
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=plo01_xq_redlight
    actor_combo_nj[i]=1
    actor_combo[i]=plo01_xq_stand
}

create_dhk(qname,qtext,qhead)

