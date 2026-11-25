/// @description 对话内容
var lsa;
lsa=choose(1,2,3)
if(lsa==1)
{
    qname="魔理沙"
    qtext="让大家看看你的背包结构嘛，怎么全是地图炮？"
    qhead=thh01_marisa
}
else if(lsa==2)
{
    qname="帕秋莉"
    qtext="呜呜呜，别骂了，小恶魔也在看直播。"
    qhead=thh12_patch
}
else
{
    qname="帕秋莉"
    qtext="不要拿那种东西指着我啊！这也算是枪吗？"
    qhead=thh12_patch
}
create_dhk(qname,qtext,qhead)
view_do_center_puz(0,global.mrobo_x[mrid],global.mrobo_y[mrid])

