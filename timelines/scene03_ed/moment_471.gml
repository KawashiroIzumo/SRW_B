/// @description 刘培茄对话内容
qname="刘培茄"
qtext=@"所以，在局座的努力之下，周锦华批给我们很多的补给物资
#并且，被迫为我们成立了一支虽然领提坦斯军饷，但不受他控制的独立部队以针对铁十字。
"
qhead=po09_warwolf
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=3
    actor_sprite[i]=plo09_warwolf_talk
    actor_combo_nj[i]=2
    actor_combo[i]=plo09_warwolf_stand
}

