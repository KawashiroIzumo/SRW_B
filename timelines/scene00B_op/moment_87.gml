/// @description 对话内容
qname="博丽灵梦"
qtext=@"可恶，我不就是拿了点物资嘛，就把我
扔这来关着，真烦。"
qhead=po04_RIMsis
with(talk_scene)
{
    i=0
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=thca00_reimu_talk
    actor_combo_nj[i]=2
    actor_combo[i]=thca00_reimu_stand
}

create_dhk(qname,qtext,qhead)

