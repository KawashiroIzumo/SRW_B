/// @description 刘培茄对话内容
qname="刘培茄"
qtext="怎么才这点人，老陆呢？"
qhead=po09_warwolf
with(talk_scene)
{
    i=1
    actor_sprite[i]=plo09_warwolf_talk
    actor_combo_nj[i]=2
    actor_combo[i]=plo09_warwolf_stand
}
create_dhk(qname,qtext,qhead)

