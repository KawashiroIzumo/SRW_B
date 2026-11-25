/// @description 妖梦对话内容
qname="魂魄妖梦"
qtext=@"但是幽幽子大人说要打倒很多人，我们这艘船算上那位不露面的张老爷子，也没几个人吧？
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

