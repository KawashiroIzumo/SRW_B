/// @description 对话内容
qname="博丽真香"
qtext=@"正是因为这个装置的原因，他们在研究的时候就已经被【铁十字】的人
控制了起来，一年前，他们找到机会，让人把完成体偷偷运出来了。"
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

