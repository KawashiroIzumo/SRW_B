/// @description 对话内容
qname="博丽真香"
qtext=@"好吧，这些人只是单纯的一群野心家而已。一年前，红博士他们三个的研究完成了，
那是一种用【声音】作为能源装载在机体上的一种装置。"
qhead=thh26_hakurei_maka
with(talk_scene)
{
    i=0
    actor_sprite[i]=thca00_reimu_stand
    i=1
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=thca26_maka_talk
    actor_combo_nj[i]=4
    actor_combo[i]=thca26_maka_stand
}
create_dhk(qname,qtext,qhead)

