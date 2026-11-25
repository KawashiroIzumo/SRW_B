/// @description 射命丸文对话内容
qname="射命丸文"
qtext=@"这内部还蛮厉害的嘛！不愧是联邦新锐战舰啊！
噢！还有三种不同的饮料可以选啊！真不错啊！"
qhead=thh07_aya
create_dhk(qname,qtext,qhead)
///黑场
with(talk_scene)
{
    i=4
    actor_sprite[i]=thca07_aya_talk
    actor_combo_nj[i]=4
    actor_combo[i]=thca07_aya_stand
    actor_mirror[i]=0
    i=1
    actor_sprite[i]=thca00_reimu_stand
    actor_combo_nj[i]=0
    actor_combo[i]=noone
    actor_mirror[i]=0
    i=2
    actor_sprite[i]=plo00_wavebro_stand
    actor_combo_nj[i]=0
    actor_combo[i]=noone
    actor_mirror[i]=1
    
}

