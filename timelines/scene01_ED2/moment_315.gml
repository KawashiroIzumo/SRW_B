/// @description 对话内容
qname="幽幽子"
qtext=@"对了。真香了解你的体质问题，
所以在你外出的这段时间里，你的后勤
就由她们来负责。"
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
    actor_combo[i]=thca06_youmu_stand
}

