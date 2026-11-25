/// @description 博丽灵梦对话内容
qname="博丽灵梦"
qtext=@"我又不需要身份证明。真香的研究所可以说是挂在联邦
下面的，我们最多就是被带回地球调查一下，走个流程，就可以
走人了，至于波澜，作为之前的道歉，我会帮你处理好这件事。
"
qhead=po04_RIMsis
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=4
    actor_sprite[i]=thca07_aya_stand
    actor_combo_nj[i]=0
    actor_combo[i]=noone
    actor_mirror[i]=0
    i=1
    actor_sprite[i]=thca00_reimu_talk
    actor_combo_nj[i]=2
    actor_combo[i]=thca00_reimu_stand
    actor_mirror[i]=0
    i=2
    actor_sprite[i]=plo00_wavebro_stand
    actor_combo_nj[i]=0
    actor_combo[i]=noone
    actor_mirror[i]=1  
}

