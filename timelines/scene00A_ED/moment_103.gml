/// @description 对话内容
qname="波澜"
qtext=@"从你用的这个材质就可以看出来吧！应该是钛陶瓷合金？这个空间站是用的一戳就破的
材料造的？？"
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

