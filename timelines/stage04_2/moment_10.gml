/// @description 主角对话内容
if(global.ls_variable[0]==0 )
{
	qname="波澜哥"
	qtext="你……"
	qhead=po00_bolan
	create_dhk(qname,qtext,qhead)
	view_do_center_find_pliot(0)
}
else
{
	qname="博丽灵梦"
	qtext="你！"
	qhead=po04_RIMsis
	create_dhk(qname,qtext,qhead)
	view_do_center_find_pliot(2)
}

