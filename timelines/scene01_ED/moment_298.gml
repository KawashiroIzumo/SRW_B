/// @description 射命丸文对话内容
qname="射命丸文"
qtext=@"我叫射命丸文，职业是记者，这位呢，是博丽灵梦，
职业是吃白饭。你想想，你一个军队，看到了野生的机师，还带着
野生的机体，你能轻易的放手吗？
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

