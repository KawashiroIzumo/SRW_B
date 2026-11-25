/// @description 对话内容
qname="博丽灵梦"
qtext=@"啧，行吧，但我总觉得你说的话有点危险，总觉得会有
拾荒者捡到。我还是把那片区域盯着吧。"
qhead=po04_RIMsis
with(talk_scene)
{
    i=0
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=thca00_reimu_talk
    actor_combo_nj[i]=1
    actor_combo[i]=thca00_reimu_stand
    i=1
    actor_sprite[i]=thca26_maka_stand
}

create_dhk(qname,qtext,qhead)

