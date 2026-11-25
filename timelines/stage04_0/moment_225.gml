/// @description 主角对话内容
if(global.ls_variable[0]==0 )
{
	qname="波澜哥"
	qtext="什么？固定炮台吗？但是……压力好强"
	qhead=po00_bolan
	create_dhk(qname,qtext,qhead)
	view_do_center_find_pliot(0)
}
else 
{
	qname="博丽灵梦"
	qtext="哇，那是什么东西啊，像个手电筒一样，太丑了。不过一看就是什么秘密武器吧？"
	qhead=po04_RIMsis
	create_dhk(qname,qtext,qhead)
	view_do_center_find_pliot(2)
}