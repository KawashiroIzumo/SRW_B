/// @description 对话内容
qname="波澜哥"
qtext="！！！那我要怎么办？"
qhead=po00_bolan
with(talk_scene)
{
    i=0
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=plo00_wavebro_talk
    actor_combo_nj[i]=3
    actor_combo[i]=plo00_wavebro_stand
}

create_dhk(qname,qtext,qhead)

