/// @description 对话内容
qname="幽幽子"
qtext=@"我的意思是让妖梦你去劝走他啦！！唔姆！！！！
就算是我的话，妖梦你也要好好想想再执行啊！！"
qhead=thh27_uuz
create_dhk(qname,qtext,qhead)
with(talk_scene)
{   
    i=0
    actor_sprite[i]=thca27_uuz_talk
    actor_combo_nj[i]=4
    actor_combo[i]=thca27_uuz_stand
    i=1
    actor_sprite[i]=thca06_youmu_stand
    actor_combo_nj[i]=2
    actor_combo[i]=thca06_youmu_stand
}

