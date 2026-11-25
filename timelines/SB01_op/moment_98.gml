/// @description 55对话内容
qname="职业选手55号"
qtext=@"我知道一个小型表演赛，打完拿钱走人的那种，
当然要赢的才能拿钱。
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

