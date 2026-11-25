/// @description 刘培茄对话内容
qname="刘培茄"
qtext=@"……你怎么把主意打到局座身上去了呢？
#这么跟你说吧，那位幽幽子大人也没说不能打倒同一个人呗？那肯定指的是很多“人次”啦。
#打倒三人各一次，和打倒一个人三次是没区别的！
"
qhead=po09_warwolf
with(talk_scene)
{
    i=1
    actor_sprite[i]=plo09_warwolf_talk
    actor_combo_nj[i]=2
    actor_combo[i]=plo09_warwolf_stand
    
    i=4
    actor_sprite[i]=thca06_youmu_stand
    actor_combo[i]=noone
}

create_dhk(qname,qtext,qhead)

