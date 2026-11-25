/// @description 对话内容
qname="波澜"
qtext="无所谓，反正在哪都可以成为歌手嘛。"
qhead=po00_bolan
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=0
    actor_sprite[i]=plo00_wavebro_talk
    actor_image_index[i]=0
    actor_combo_nj[i]=2
    actor_combo[i]=plo00_wavebro_stand
    actor_mirror[i]=false
    i=1
    actor_sprite[i]=thca26_maka_stand
}

