/// @description 对话内容
qname="博丽真香"
qtext="没跑出来呗，怕是被铁十字的人直接击毙了。"
qhead=thh26_hakurei_maka
with(talk_scene)
{
    i=0
    actor_sprite[i]=thca00_reimu_stand
    i=1
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=thca26_maka_talk
    actor_combo_nj[i]=4
    actor_combo[i]=thca26_maka_stand
}
create_dhk(qname,qtext,qhead)

