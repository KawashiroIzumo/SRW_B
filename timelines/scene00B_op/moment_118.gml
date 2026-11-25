/// @description 对话内容
qname="博丽灵梦"
qtext=@"不靠谱也无所谓啦，那种时候知道这件事的人都不会
在战舰上面的。话说你打算把我关到什么时候，我拿了东西还要
回去吃晚饭。"
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

