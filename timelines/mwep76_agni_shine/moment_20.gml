/// @description 对话内容
var lsa;
lsa=choose(1,2,3)
if(lsa==1)
{
    qname="帕秋莉"
    qtext="检索巴图瓦鲁记录，火神之光准备。让你们见识见识红莲吧。"
    qhead=thh12_patch
}
else if(lsa==2)
{
    qname="魔理沙"
    qtext="帕秋莉，检索巴图瓦鲁记录，我需要一个能够把周边全部灭掉的高温！"
    qhead=thh01_marisa
}
else
{
    qname="帕秋莉"
    qtext="不用检索巴图瓦鲁记录了，只是三节以内的咒文的话……我还是可以自己咏唱的。"
    qhead=thh12_patch
}
create_dhk(qname,qtext,qhead)
view_do_center_puz(0,global.mrobo_x[mrid],global.mrobo_y[mrid])

