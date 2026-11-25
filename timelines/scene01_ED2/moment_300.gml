/// @description 对话内容
qname="魂魄妖梦"
qtext=@"幽幽子大人，虽然我作为您的剑还
很不成熟，但只要是您需要的，我绝对会去做的。"
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

