/// @description 刘培茄对话内容
qname="刘培茄"
qtext=@"那好，我去登记了。
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

