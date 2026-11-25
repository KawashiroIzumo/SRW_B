/// @description 射命丸文对话内容
qname="射命丸文"
qtext=@"...我现在信你是真的拾荒者了.......
周锦华，联邦上校，提坦斯的军事领导，是个大人物，
不过是脑子不好使，有很多黑料可以挖的那种大人物。
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

