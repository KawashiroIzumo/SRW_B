/// @description 对话内容
qname="射命丸文"
qtext=@"........（一般来说这种事情被人发现会很羞耻..
..而且以这个家伙的性格，我要是嘲笑她的话我肯定会死掉的
还是直接当无事发生直接走掉吧......）"
qhead=thh07_aya
create_dhk(qname,qtext,qhead)
with(talk_scene)
{  
    i=0
    actor_sprite[i]=thca26_maka_stand
    actor_combo_nj[i]=2
    actor_combo[i]=thca26_maka_stand
    actor_mirror[i]=1
    i=1
    actor_sprite[i]=thca07_aya_stand
}

