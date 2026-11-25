/// @description 对话内容
var lsa;
lsa=choose(1,2,3)
if(lsa==1)
{
    qname="拉托妮9号"
    qtext="全体起立，从今天起这里就叫做琪露诺宙域！"
    qhead=thh09_chiroB
}
else if(lsa==2)
{
    qname="琪露诺"
    qtext="当年蕾蒂能够从八十度降温到零下八十度，我们一般把这种人叫做，雪怪！"
    qhead=thh09_chiro
}
else
{
    qname="琪露诺"
    qtext="天热穿皮猴，天冷吃冰球……钻石风暴！"
    qhead=thh09_chiro
}
create_dhk(qname,qtext,qhead)
view_do_center_puz(0,global.mrobo_x[mrid],global.mrobo_y[mrid])

