/// @description 灵梦对话内容
qname="博丽灵梦"
qtext="是这样啊，真为老陆感到伤心。（嘴角上扬）"
qhead=po04_RIMsis
with(talk_scene)
{
    i=1
    actor_sprite[i]=plo09_warwolf_stand
    actor_combo[i]=noone
    
    i=2
    actor_sprite[i]=thca00_reimu_talk
    actor_combo_nj[i]=1
    actor_combo[i]=thca00_reimu_stand
}

create_dhk(qname,qtext,qhead)

