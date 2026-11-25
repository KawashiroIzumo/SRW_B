/// @description 对话内容
qname="幽幽子"
qtext=@"妖梦你在嘀咕什么呢！既然决定了要出去的话，那今天晚上就
准备一道送别宴吧！"
qhead=thh27_uuz
create_dhk(qname,qtext,qhead)
with(talk_scene)
{   
    i=0
    actor_sprite[i]=thca27_uuz_talk
    actor_combo_nj[i]=2
    actor_combo[i]=thca27_uuz_stand
    i=1
    actor_sprite[i]=thca06_youmu_stand
    actor_combo_nj[i]=2
    actor_combo[i]=thca06_youmu_stand
}

