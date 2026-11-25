/// @description 对话内容
qname="博丽真香"
qtext=@"！！！小伙子你瞎说什么呢！什么叫一戳就破，我像是那种为了省钱
用劣质材料的无良工程师吗！别忘了你开的高...呃..MS还是我设计的！！！"
qhead=thh26_hakurei_maka
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=1
    actor_sprite[i]=thca26_maka_talk
    actor_image_index[i]=0
    actor_combo_nj[i]=4
    actor_combo[i]=thca26_maka_stand
    i=0
    actor_sprite[i]=plo00_wavebro_stand
}

