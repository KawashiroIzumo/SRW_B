/// @description 刘培茄对话内容
qname="刘培茄"
qtext=@"那当然是指神奇陆夫人。
"
qhead=po09_warwolf
with(talk_scene)
{
    i=1
    actor_sprite[i]=plo09_warwolf_talk
    actor_combo_nj[i]=1
    actor_combo[i]=plo09_warwolf_stand
    
    i=5
    actor_sprite[i]=thca01_marisa_stand
    actor_combo[i]=noone
}

create_dhk(qname,qtext,qhead)

