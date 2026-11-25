/// @description 刘培茄对话内容
qname="刘培茄"
qtext=@"简直太不像话了，不过他不是军人，倒也罢了，回头再来教育他。
#我们的几位副机师各有各的岗位，暂且不论。没来的大家互相转告一下。
#现在开始战术会议。
"
qhead=po09_warwolf
with(talk_scene)
{
    i=3
    actor_sprite[i]=plo00_wavebro_stand
    actor_combo[i]=noone
    
    i=1
    actor_sprite[i]=plo09_warwolf_talk
    actor_combo_nj[i]=3
    actor_combo[i]=plo09_warwolf_stand
}

create_dhk(qname,qtext,qhead)

