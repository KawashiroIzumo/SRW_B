/// @description 对话内容
qname="波澜哥"
qtext="在上面的大人物的车队里面，开没有脚的MS，是一份朝九晚五的工作。"
qhead=po00_bolan
with(talk_scene)
{
    i=0
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=plo00_wavebro_talk
    actor_combo_nj[i]=2
    actor_combo[i]=plo00_wavebro_stand
    
    i=1
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=plo01_xq_stand
}

create_dhk(qname,qtext,qhead)

