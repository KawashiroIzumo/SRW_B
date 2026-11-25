/// @description 对话内容
qname="博丽真香"
qtext=@"嘛，那你就准备出发吧，以后你就要自己负责维护
机体了啊。要是有什么困难的话就来找我吧。"
qhead=thh26_hakurei_maka
create_dhk(qname,qtext,qhead)
with(talk_scene)
{  
    i=0
    actor_sprite[i]=thca26_maka_talk
    actor_combo_nj[i]=4
    actor_combo[i]=thca26_maka_stand
    i=2
    actor_sprite[i]=plo00_wavebro_stand
    actor_combo_nj[i]=2
    actor_combo[i]=plo00_wavebro_stand
}

