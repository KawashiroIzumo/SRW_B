/// @description 对话内容
qname="幽幽子"
qtext=@"哎~~~~~？我不是怀疑妖梦你的搜集速度啦，但是
要收集的春度数量只有拜斯顿·威尔的春度应该是不够的啦！"
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

