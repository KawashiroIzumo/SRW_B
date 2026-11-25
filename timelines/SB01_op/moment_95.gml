/// @description 阿姆罗对话内容
qname="阿姆罗·雷"
qtext=@"算了算了，都这样了再追究也没什么
用了，不过之后怎么办？离比赛还有点时间吧？
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

