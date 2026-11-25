/// @description 对话内容
qname="博丽真香"
qtext=@"为什么帮你？你父亲以前借过我钱啊，我可不是那种
欠了人情不还的人啊。"
qhead=thh26_hakurei_maka
create_dhk(qname,qtext,qhead)
with(talk_scene)
{  
    i=0
    actor_sprite[i]=thca26_maka_talk
    actor_combo_nj[i]=3
    actor_combo[i]=thca26_maka_stand
    i=2
    actor_sprite[i]=plo00_wavebro_stand
    actor_combo_nj[i]=2
    actor_combo[i]=plo00_wavebro_stand
}

