/// @description 对话内容
qname="波澜哥"
qtext="你找我有什么事吗？"
qhead=po00_bolan
create_dhk(qname,qtext,qhead)
with(talk_scene)
{  
    i=0
    actor_sprite[i]=thca26_maka_stand
    actor_combo_nj[i]=2
    actor_combo[i]=thca26_maka_stand
    actor_mirror[i]=1
    i=2
    actor_sprite[i]=plo00_wavebro_talk
    actor_combo_nj[i]=2
    actor_combo[i]=plo00_wavebro_stand
}

