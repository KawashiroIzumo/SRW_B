/// @description 阿姆罗对话内容
qname="阿姆罗·雷"
qtext=@"嗯......这个座位，总感觉有一点恶意
啊。话说我们为什么要来李庄白肉啊？
"
qhead=po23_amuro
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=0
    actor_sprite[i]=plo24_player_stand
    actor_combo[i]=noone
    i=1
    actor_sprite[i]=plo24_player_stand
    actor_combo[i]=noone
    i=2
    actor_sprite[i]=plo23_amuro_talk
    actor_combo_nj[i]=2
    actor_combo[i]=plo23_amuro_stand
    i=3
    actor_sprite[i]=plo24_player_stand
    actor_combo[i]=noone
    i=4
    actor_sprite[i]=plo24_player_stand
    actor_combo[i]=noone

}

