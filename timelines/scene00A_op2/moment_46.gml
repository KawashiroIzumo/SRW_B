/// @description 对话内容
qname="波澜哥"
qtext="好，我接受了（即答）"
qhead=po00_bolan
with(talk_scene)
{
    i=0
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=plo00_wavebro_talk
    actor_combo_nj[i]=1
    actor_combo[i]=plo00_wavebro_stand
}

create_dhk(qname,qtext,qhead)

