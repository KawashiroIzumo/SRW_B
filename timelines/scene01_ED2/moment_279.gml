/// @description 对话内容
qname="幽幽子"
qtext=@"唔姆~我没有岔开话题啦！就是之前真香联系过我了，
她说她那边研究出可以替代春度的装置啦！"
qhead=thh27_uuz
create_dhk(qname,qtext,qhead)
with(talk_scene)
{   
    i=0
    actor_sprite[i]=thca27_uuz_talk
    actor_combo_nj[i]=2
    actor_combo[i]=thca27_uuz_stand
    i=1
    actor_sprite[i]=thca06_youmu_stand
    actor_combo_nj[i]=2
    actor_combo[i]=thca06_youmu_stand
}

