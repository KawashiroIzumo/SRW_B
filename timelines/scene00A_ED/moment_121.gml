/// @description 对话内容
qname="波澜"
qtext=".... 我父亲以前是提姆·雷博士的朋友，在一年战争的时候为了保护高达而死在了site6。"
qhead=po00_bolan
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=0
    actor_sprite[i]=plo00_wavebro_talk
    actor_image_index[i]=0
    actor_combo_nj[i]=2
    actor_combo[i]=plo00_wavebro_stand
    i=1
    actor_sprite[i]=thca26_maka_stand
}

