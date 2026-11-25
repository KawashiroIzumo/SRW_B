/// @description 对话内容
qname="幽幽子"
qtext=@"安啦。。总而言之，我需要你去site.4真香那里去
取得那个装置并且带回足够的春度。没问题的吧？"
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

