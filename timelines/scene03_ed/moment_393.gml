/// @description SEELE对话内容
qname="SEELE"
qtext=@"那几个饭桶职业玩家？
#你这工作态度很成问题，明天之前给我们拿个更好的方案出来。
#我们既然能帮你掌握提坦斯，自然也能把你拿出去，换个有能力的人来。
"
qhead=po14S_seele06
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=1
    actor_sprite[i]=plo14_zjh_stand
    actor_combo[i]=noone
}

