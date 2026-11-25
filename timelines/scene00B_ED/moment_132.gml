/// @description 对话内容
qname="博丽灵梦"
qtext=@"啧，见势不妙就跑路不是我们家的优良传统吗？我知道你在一年
战争的时候，被称为[\c:255]【赤色扫把星】[\c:16777215]，那可是和【赤色
彗星】并列的吉翁第一逃跑王。"
qhead=po04_RIMsis
with(talk_scene)
{
    i=0
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=thca00_reimu_talk
    actor_combo_nj[i]=4
    actor_combo[i]=thca00_reimu_stand
    i=1
    actor_sprite[i]=thca26_maka_stand
}

create_dhk(qname,qtext,qhead)

