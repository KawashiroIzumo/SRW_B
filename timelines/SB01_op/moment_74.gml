/// @description zeta对话内容
qname="职业选手zeta"
qtext=@"啊哈哈哈哈哈，今天是我请你们吃顿饭
啦。
"
qhead=po24_professplayer
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=0//zeta
    actor_sprite[i]=plo24_player_talk
    actor_combo_nj[i]=2
    actor_combo[i]=plo24_player_stand
    i=1//55号
    actor_sprite[i]=plo24_player_stand
    actor_combo[i]=noone
    i=2//阿姆罗
    actor_sprite[i]=plo23_amuro_stand
    actor_combo[i]=noone
    i=3//梅萨
    actor_sprite[i]=plo24_player_stand
    actor_combo[i]=noone
    i=4//封弊者
    actor_sprite[i]=plo24_player_stand
    actor_combo[i]=noone

}

