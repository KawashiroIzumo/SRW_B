/// @description 对话内容
qname="博丽真香"
qtext=@"对了，送你的那台MS已经修好了，设计图我也放在机体里面了，你如果
要改的话也可以到这来改造一下。"
qhead=thh26_hakurei_maka
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=1
    actor_sprite[i]=thca26_maka_talk
    actor_image_index[i]=0
    actor_combo_nj[i]=3
    actor_combo[i]=thca26_maka_stand
}

