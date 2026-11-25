/// @description 对话内容
qname="幽幽子"
qtext=@"不行！！！必须要开宴席！！我要.....不是....是妖梦
你该大吃一顿好去收集春度了！"
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

