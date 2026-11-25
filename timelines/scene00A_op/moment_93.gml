/// @description 对话内容
qname="贤齐博士"
qtext="你好，请自我介绍一下。"
qhead=po02_rxq
with(talk_scene)
{
    i=0
    actor_sprite[i]=plo00_wavebro_stand
    actor_combo[i]=noone
    
    i=1
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=plo01_xq_rxqtalk
    actor_combo_nj[i]=2
    actor_combo[i]=plo01_xq_stand
}

create_dhk(qname,qtext,qhead)

