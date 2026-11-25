/// @description 刘培茄对话内容
qname="刘培茄"
qtext=@"嗯，看起来他很冷静了。那么，魂魄妖梦小姐是吧。
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


