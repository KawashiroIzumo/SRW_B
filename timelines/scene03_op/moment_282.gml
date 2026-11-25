/// @description 魔理沙对话内容
qname="雾雨魔理沙"
qtext="舰长，你说的新兵难道是指………………？"
qhead=thh01_marisa
with(talk_scene)
{
    i=1
    actor_sprite[i]=plo09_warwolf_stand
    actor_combo[i]=noone
    
    i=5
    actor_sprite[i]=thca01_marisa_talk
    actor_combo_nj[i]=3
    actor_combo[i]=thca01_marisa_stand
}

create_dhk(qname,qtext,qhead)

