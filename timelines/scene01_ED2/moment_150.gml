/// @description 对话内容
qname="幽幽子"
qtext=@"哎呀？好像忘记告诉妖梦该去收集
春度了啊。嗯嗯，那就等吃完饭再说吧。"
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
}

