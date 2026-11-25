/// @description 对话内容
qname="幽幽子"
qtext=@"呃....下午茶没有吃饱啊......嗯？总觉得忘记什么事了...
嘛，无所谓了...."
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

