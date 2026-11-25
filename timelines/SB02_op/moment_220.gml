/// @description 梁非凡对话内容
qname="梁非凡"
qtext=@"把这当游乐场啊？啊？！那么喜欢玩就让你们玩。
#到下面去跑步，跑完二十圈之后再做俯卧撑，给我撑够一百下，去！
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

