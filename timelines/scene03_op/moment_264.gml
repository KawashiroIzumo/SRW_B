/// @description 妖梦对话内容
qname="魂魄妖梦"
qtext=@"友好？那不是没架打？我不干。
#按照幽幽子大人的指示，我必须打倒很多人才行。
"
qhead=thh06_youmu
with(talk_scene)
{
    i=1
    actor_sprite[i]=plo09_warwolf_stand
    actor_combo[i]=noone
    
    i=4
    actor_sprite[i]=thca06_youmu_talk
    actor_combo_nj[i]=3
    actor_combo[i]=thca06_youmu_stand
}

create_dhk(qname,qtext,qhead)

