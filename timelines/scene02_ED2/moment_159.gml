/// @description 刘培茄对话内容
qname="刘培茄"
qtext=@"虽然你是个黑户，但你的爷爷在联邦有身份证明，
这样子的话，你也可以正大光明的加入我们。
"
qhead=po09_warwolf
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
     i=0
     actor_sprite[i]=plo09_warwolf_talk
     actor_combo_nj[i]=2
     actor_combo[i]=plo09_warwolf_stand
     i=1
     actor_sprite[i]=thca06_youmu_stand
     actor_combo[i]=noone
     
}


