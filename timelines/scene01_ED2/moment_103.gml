/// @description 对话内容
qname="幽幽子"
qtext="妖梦~~~~~~~~~今天的下午茶呢？？？？？？？？"
qhead=thh27_uuz
create_dhk(qname,qtext,qhead)
with(talk_scene)
{   
    i=0
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=thca27_uuz_talk
    actor_combo_nj[i]=2
    actor_combo[i]=thca27_uuz_stand
    actor_mirror[i]=0
}

