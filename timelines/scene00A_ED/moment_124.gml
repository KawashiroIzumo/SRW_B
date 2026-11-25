/// @description 对话内容
qname="博丽真香"
qtext=@"原来如此，因为父亲的原因吗。那么你要来我的实验室么，虽然说
比较穷，还在联邦边境，但是待遇方面可以谈的嘛。"
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

