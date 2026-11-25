/// @description 刘培茄对话内容
qname="刘培茄"
qtext=@"魂魄小姐，你想一想啊，我们这个部队几乎全是新兵，
#如果你每天都对他们进行斯巴达式训练的话，是不是每天都能打倒一大批人呢？
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

