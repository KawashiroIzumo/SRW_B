/// @description 对话内容
qname="博丽真香"
qtext=@"嘛，你这样说我就没办法了，那你之后如果想法有改变的话，就到这里
来吧。"
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

