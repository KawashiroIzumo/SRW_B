/// @description 博丽灵梦对话内容
qname="博丽灵梦"
qtext=@"你捞一个是捞，捞三个也是捞，
何必把我弄去地球嘛。
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
    actor_mirror[i]=1
    i=2
    actor_sprite[i]=plo00_wavebro_stand
    actor_combo_nj[i]=0
    actor_combo[i]=noone
    actor_mirror[i]=1  
}

