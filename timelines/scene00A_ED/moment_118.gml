/// @description 对话内容
qname="博丽真香"
qtext="这么说来，你好像很懂机器人的制造咯？你真的是歌手吗？"
qhead=thh26_hakurei_maka
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=1
    actor_sprite[i]=thca26_maka_talk
    actor_image_index[i]=0
    actor_combo_nj[i]=3
    actor_combo[i]=thca26_maka_stand
    i=0
    actor_sprite[i]=plo00_wavebro_stand
}

