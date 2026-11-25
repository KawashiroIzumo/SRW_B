/// @description 对话内容
qname="博丽真香"
qtext=@".......你说的很有道理，但是我没钱啊！我要是有钱的话会是这样吗！
我还想做一台全用新超合金Zα的高达呢！"
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

