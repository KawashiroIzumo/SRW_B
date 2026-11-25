/// @description 刘培茄对话内容
qname="刘培茄"
qtext=@"顺便麻烦你转告一下其他人，
战舰这段时间会进行检修，会在上海市
停留一段时间，然后出发执行任务。
"
qhead=po09_warwolf
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
     i=0
     actor_sprite[i]=plo09_warwolf_talk
     actor_combo_nj[i]=4
     actor_combo[i]=plo09_warwolf_stand
     i=1
     actor_sprite[i]=thca06_youmu_stand
     actor_combo[i]=noone
     
}


