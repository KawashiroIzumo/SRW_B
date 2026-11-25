/// @description 波澜对话内容
qname="波澜哥"
qtext=@"那个？你们能告诉我一下周锦华是
谁吗？"
qhead=po00_bolan
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=4
    actor_sprite[i]=thca07_aya_stand
    actor_combo_nj[i]=0
    actor_combo[i]=noone
    actor_mirror[i]=0
    i=1
    actor_sprite[i]=thca00_reimu_stand
    actor_combo_nj[i]=2
    actor_combo[i]=noone
    actor_mirror[i]=0
    i=2
    actor_sprite[i]=plo00_wavebro_talk
    actor_combo_nj[i]=2
    actor_combo[i]=plo00_wavebro_stand
    actor_mirror[i]=1  
}

