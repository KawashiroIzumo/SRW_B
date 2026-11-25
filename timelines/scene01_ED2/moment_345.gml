/// @description 对话内容
qname="魂魄妖梦"
qtext=@"哎？好吧.....幽幽子大人........我打发了那个家伙
就去准备宴席........"
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
    actor_combo_nj[i]=3
    actor_combo[i]=thca06_youmu_stand
}

