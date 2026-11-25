/// @description 对话内容
qname="魂魄妖梦"
qtext=@"幽幽子大人，晚饭已经安排好了，随时
都可以去吃了。"
qhead=thh06_youmu
create_dhk(qname,qtext,qhead)
with(talk_scene)
{   
    i=0
    actor_sprite[i]=thca27_uuz_stand
    actor_combo_nj[i]=2
    actor_combo[i]=thca27_uuz_stand
    i=1
    actor_sprite[i]=thca06_youmu_talk
    actor_combo_nj[i]=2
    actor_combo[i]=thca06_youmu_stand
    }

