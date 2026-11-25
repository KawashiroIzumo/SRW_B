/// @description 对话内容
qname="幽幽子"
qtext=@"我又不会真的吃掉你的半灵啦.......真的只是尝尝味道和口感
而已啦....妖梦真是小气呢...."
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
}

