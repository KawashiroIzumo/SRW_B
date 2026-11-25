/// @description 刘培茄对话内容
qname="刘培茄"
qtext=@"嗯，你的理解力很强啊。
#还有别的问题吗？
"
qhead=po09_warwolf
with(talk_scene)
{
    i=1
    actor_sprite[i]=plo09_warwolf_talk
    actor_combo_nj[i]=2
    actor_combo[i]=plo09_warwolf_stand
    
    i=4
    actor_sprite[i]=thca06_youmu_stand
    actor_combo[i]=noone
}

create_dhk(qname,qtext,qhead)

