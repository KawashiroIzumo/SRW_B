/// @description 对话内容
var lsa;
lsa=choose(1,2,3)
if(lsa==1)
{
    qname="针妙丸"
    qtext="全机退避，灵魂激流要来了"
    qhead=thh31_sukuna
}
else if(lsa==2)
{
    qname="针妙丸"
    qtext="瞄准全部的敌军，扫荡开始"
    qhead=thh31_sukuna
}
else
{
    qname="针妙丸"
    qtext="怎么了，正邪，为什么不说话"
    qhead=thh31_sukuna
}
create_dhk(qname,qtext,qhead)
view_do_center_puz(0,global.mrobo_x[mrid],global.mrobo_y[mrid])

