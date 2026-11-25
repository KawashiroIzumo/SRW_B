/// @description 对话内容
qname="波澜"
qtext=@"？？？那种MS，真的不是随手制造出来的么！而且，用的材料说不定还没
有垃圾场里的好。"
qhead=po00_bolan
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=0
    actor_sprite[i]=plo00_wavebro_talk
    actor_image_index[i]=0
    actor_combo_nj[i]=3
    actor_combo[i]=plo00_wavebro_stand
    i=1
    actor_sprite[i]=thca26_maka_stand
}

