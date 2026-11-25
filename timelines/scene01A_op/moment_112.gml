/// @description 对话内容
qname="博丽真香"
qtext=@"啧啧啧，作为一个年轻人你可真
是无趣啊。你的新机体装备好了，你可以取
机库看看了。机库你找的到吧？"
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

