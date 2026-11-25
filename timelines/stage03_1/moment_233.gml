/// @description 对话内容
if(global.ls_variable[0]==1)
{
    qname="博丽灵梦"
    qtext="这……从来没见过的机体啊！那也是ms吗？"
    qhead=po04_RIMsis
    create_dhk(qname,qtext,qhead)
    view_do_center_find_pliot(2)
}
else
{
    qname="波澜哥"
    qtext="这个身体结构，还有标志性的手部，不可能是ms！是独行轻骑兵的一种吗？名字好像是叫……"
    qhead=po00_bolan
    create_dhk(qname,qtext,qhead)
    view_do_center_find_pliot(0)
}

