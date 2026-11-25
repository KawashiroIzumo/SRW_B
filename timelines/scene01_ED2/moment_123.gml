/// @description 对话内容
qname="幽幽子"
qtext=@"哎~~~~~~~~~妖梦，我饿嘛！在等的时候能把你的
团薯给我嚼几下嘛......我还是比较好奇你的团薯的口感呢？"
qhead=thh27_uuz
create_dhk(qname,qtext,qhead)
with(talk_scene)
{   
    i=0
    actor_sprite[i]=thca27_uuz_talk
    actor_combo_nj[i]=4
    actor_combo[i]=thca27_uuz_stand
    i=1
    actor_sprite[i]=thca06_youmu_stand
    actor_combo_nj[i]=2
}

