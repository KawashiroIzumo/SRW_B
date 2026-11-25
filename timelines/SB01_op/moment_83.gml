/// @description 封弊者对话内容
qname="职业选手封弊者"
qtext=@".......因为之前梅萨先生把战队的钱带上
了机体，机体被击破之后，钱全部没了，
昨天的饭钱就是最后一点了。
"
qhead=po24_professplayer
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=4//封弊者
    actor_sprite[i]=plo24_player_talk
    actor_combo_nj[i]=1
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
    i=0//zeta
    actor_sprite[i]=plo24_player_stand
    actor_combo[i]=noone

}

