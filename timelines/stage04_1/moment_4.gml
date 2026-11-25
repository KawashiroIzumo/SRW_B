/// @description 主角对话内容
if(global.ls_variable[0]==0 )
{
	qname="波澜哥"
	qtext="好，这个策略对他是有效的！接下来只需要破坏生产线就好了"
	qhead=po00_bolan
	create_dhk(qname,qtext,qhead)
	view_do_center_find_pliot(0)
}
else
{
	qname="博丽灵梦"
	qtext="怎么样？小混蛋，终于发现你也不是无敌的了吧。接下来只需要破坏生产线的话……"
	qhead=po04_RIMsis
	create_dhk(qname,qtext,qhead)
	view_do_center_find_pliot(2)
}

