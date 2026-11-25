/// @description 对话内容
qname="幽幽子"
qtext=@"等一下！！！你干嘛一脸死志的往外冲啊！
对面可是巴朗巴朗的秘宝啊，以你现在的水平还不足以
击败他啊。"
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
    actor_mirror[i]=1
}

