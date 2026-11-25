/// @description 55对话内容
qname="职业选手55号"
qtext=@"兄弟，这是表演赛啊，才不是什么
黑赛，你就说打不打吧？
"
qhead=po24_professplayer
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=4//封弊者
    actor_sprite[i]=plo24_player_talk
    actor_combo[i]=noone
    i=1//55号
    actor_sprite[i]=plo24_player_stand
    actor_combo_nj[i]=1
    actor_combo[i]=plo24_player_stand
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

