/// @description SEELE对话内容
qname="SEELE"
qtext=@"周锦华，你可真是个人才。
#还不快点把eva追回来？
"
qhead=po14S_seele05
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=1
    actor_sprite[i]=plo14_zjh_stand
    actor_combo[i]=noone
}

