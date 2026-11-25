/// @description 射命丸文对话内容
qname="射命丸文"
qtext=@"之前铁十字的机体有点不太对劲，你也听到看到了吧。
我记得之前我调查过一件事。9年前，部分殖民卫星被神秘
部队袭击，带走了大量的居民。7年前，这些部队又袭击了
地球，然后被联邦击退，但被击坠的机体中却有一些如同
木偶一般的人，而这些人正是9年前失踪的居民。
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

}

