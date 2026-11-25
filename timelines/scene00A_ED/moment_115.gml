/// @description 对话内容
qname="波澜"
qtext=@".......那种高达肯定不会出现的，怎么想这种乱来的预算都会被后勤
打死。"
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

