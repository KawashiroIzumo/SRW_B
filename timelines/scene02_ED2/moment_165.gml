/// @description 刘培茄对话内容
qname="刘培茄"
qtext=@"没事没事，并不是常规上的那种
参军，准确的来说，我们是在“雇佣”你们，
你有事的时候，我们就会隐藏你的信息，在
外人看来，你就是不存在的。这样的待遇，你能
接受吗？
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


