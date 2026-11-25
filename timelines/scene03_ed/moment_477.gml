/// @description 刘培茄对话内容
qname="刘培茄"
qtext=@"嗯，咳咳。
#我之所以把你们叫来，是想要征询一下这个部队的名字取什么比较好。
#看到这里年轻人比较多，问问你们的意见至少不会落伍。
"
qhead=po09_warwolf
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=1
    actor_sprite[i]=thca00_reimu_stand
    i=2
    actor_sprite[i]=plo00_wavebro_stand
    i=3
    actor_sprite[i]=plo09_warwolf_talk
    actor_combo_nj[i]=2
    actor_combo[i]=plo09_warwolf_stand
}

