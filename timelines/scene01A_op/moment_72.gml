/// @description 对话内容
qname="博丽真香"
qtext=@"你来的可真慢啊...让一个老人家等这么久真的
好么？"
qhead=thh26_hakurei_maka
create_dhk(qname,qtext,qhead)
with(talk_scene)
{  
    i=0
    actor_sprite[i]=thca26_maka_talk
    actor_combo_nj[i]=2
    actor_combo[i]=thca26_maka_stand
    actor_mirror[i]=1
}

