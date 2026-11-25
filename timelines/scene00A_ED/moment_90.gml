/// @description 对话内容
qname="波澜哥"
qtext="总感觉这里给人一股贫穷的气息啊。"
qhead=po00_bolan
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=0
    actor_sprite[i]=plo00_wavebro_talk
    actor_image_index[i]=0
    actor_combo_nj[i]=2
    actor_combo[i]=plo00_wavebro_stand
}

