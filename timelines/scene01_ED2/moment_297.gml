/// @description 对话内容
qname="幽幽子"
qtext=@"嗯嗯。她们啊，惹上了一些人呢，你这次出去的话，
肯定会和那些人战斗甚至是厮杀噢，即便是这样你也要去吗？"
qhead=thh27_uuz
create_dhk(qname,qtext,qhead)
with(talk_scene)
{   
    i=0
    actor_sprite[i]=thca27_uuz_talk
    actor_combo_nj[i]=3
    actor_combo[i]=thca27_uuz_stand
    i=1
    actor_sprite[i]=thca06_youmu_stand
    actor_combo_nj[i]=2
    actor_combo[i]=thca06_youmu_stand
}

