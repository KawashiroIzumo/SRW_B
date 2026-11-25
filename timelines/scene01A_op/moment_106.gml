/// @description 对话内容
qname="博丽真香"
qtext=".........你为什么不说话......"
qhead=thh26_hakurei_maka
create_dhk(qname,qtext,qhead)
with(talk_scene)
{  
    i=0
    actor_sprite[i]=thca26_maka_talk
    actor_combo_nj[i]=1
    actor_combo[i]=thca26_maka_stand
    i=2
    actor_sprite[i]=plo00_wavebro_stand
    actor_combo_nj[i]=2
    actor_combo[i]=plo00_wavebro_stand
}

