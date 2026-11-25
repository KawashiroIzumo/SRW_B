/// @description 刘培茄对话内容
qname="刘培茄"
qtext=@"首先是第一件事，陆先生，现在我代表地球联邦
宇宙军向您发出征兵通知，从现在开始你就是陆准尉了，
而你将驾驶EVA—FLag6号机跟随本舰进行作战任务。
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


