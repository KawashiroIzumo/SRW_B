/// @description 梁非凡对话内容
qname="梁非凡"
qtext=@"又在这里聊天打屁，是不是都没事做？
#都过来都过来。
"
qhead=po33_liangfeifan
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=0
    actor_sprite[i]=plo31_liuxing_stand
    actor_combo[i]=noone
    i=1
    actor_sprite[i]=plo32_police_stand
    actor_combo[i]=noone
    i=2
    actor_sprite[i]=plo32_police_stand
    actor_combo[i]=noone
}

