/// @description 对话内容
qname="波澜哥"
qtext=@"三位老师。我叫波澜，是龟褚殖民卫星的本地人。
"
qhead=po00_bolan
with(talk_scene)
{
    i=0
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=plo00_wavebro_talk
    actor_combo_nj[i]=2
    actor_combo[i]=plo00_wavebro_stand
    
    i=1
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=plo01_xq_stand
    actor_combo_nj[i]=2
    actor_combo[i]=noone
}

create_dhk(qname,qtext,qhead)

