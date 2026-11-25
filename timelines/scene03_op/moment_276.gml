/// @description 妖梦对话内容
qname="魂魄妖梦"
qtext="好像是这个道理啊！虽然感觉有点奇怪。"
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

