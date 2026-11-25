/// @description 对话内容
qname="波澜哥"
qtext="脚只是装饰，上面的大人物是不会懂的。"
qhead=po00_bolan
with(talk_scene)
{
    i=0
    actor_sprite[i]=plo00_wavebro_talk
    actor_combo_nj[i]=2
    actor_combo[i]=plo00_wavebro_stand
    
    i=1
    actor_sprite[i]=plo01_xq_stand
    actor_combo[i]=noone
}

create_dhk(qname,qtext,qhead)

