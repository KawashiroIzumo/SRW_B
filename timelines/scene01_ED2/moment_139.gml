/// @description 对话内容
qname="魂魄妖梦"
qtext=@"太好了，逃过一劫，幽幽子大人，我先去拿您的
下午茶了......"
qhead=thh06_youmu
create_dhk(qname,qtext,qhead)
with(talk_scene)
{   
    i=0
    actor_sprite[i]=thca27_uuz_stand
    actor_combo_nj[i]=1
    i=1
    actor_sprite[i]=thca06_youmu_talk
    actor_combo_nj[i]=2
    actor_combo[i]=thca06_youmu_stand
    actor_mirror[i]=1
}

