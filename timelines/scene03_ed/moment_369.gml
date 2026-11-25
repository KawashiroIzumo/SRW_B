/// @description SEELE对话内容
qname="SEELE"
qtext=@"周锦华。我们这次找你过来，不光是为了高达的事情。
#虽然你在上海nerv分部的事情处理的不错，但是，有些事情并没有按照我们的剧本发展
"
qhead=po14S_seele06
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=1
    actor_sprite[i]=plo14_zjh_stand
    actor_combo[i]=noone
}

