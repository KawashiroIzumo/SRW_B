/// @description 对话内容
var lsa;
lsa=choose(1,2,3)
if(lsa==1)
{
    qname="帕秋莉"
    qtext="检索巴图瓦鲁记录，全工程完成。变化学派加载。魔理沙，张开嘴，吐点什么吧。"
    qhead=thh12_patch
}
else if(lsa==2)
{
    qname="魔理沙"
    qtext="哇，喉咙那里好恶心啊，嗬————退！"
    qhead=thh01_marisa
}
else
{
    qname="帕秋莉"
    qtext="检索巴图瓦鲁记录，自动咏唱开始，贤者之石第一第二阵列，复诵5遍以加强效果。"
    qhead=thh12_patch
}
create_dhk(qname,qtext,qhead)
view_do_center_puz(0,global.mrobo_x[mrid],global.mrobo_y[mrid])

