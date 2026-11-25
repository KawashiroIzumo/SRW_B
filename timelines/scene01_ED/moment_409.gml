/// @description 射命丸文对话内容
qname="射命丸文"
qtext=@"你等我说完嘛，那些机体袭击的过程录像我弄到了，
但很快就被联邦的人给我弄走了.....但我知道一件事，
那些机体的反应和今天我们遇到的差不多，只是诡异的
出力没有今天那么高而已。
"
qhead=thh07_aya
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=4
    actor_sprite[i]=thca07_aya_talk
    actor_combo_nj[i]=2
    actor_combo[i]=thca07_aya_stand
    actor_mirror[i]=0
    i=1
    actor_sprite[i]=thca00_reimu_stand
    actor_combo_nj[i]=0
    actor_combo[i]=noone
    actor_mirror[i]=1
    i=2
    actor_sprite[i]=plo00_wavebro_stand
    actor_combo_nj[i]=0
    actor_combo[i]=noone
    actor_mirror[i]=1  
}

