/// @description 主角对话内容
if(global.ls_variable[0]==0 )
{
	qname="波澜哥"
	qtext="总觉得铁十字总部很安静呢。 "
	qhead=po00_bolan
	create_dhk(qname,qtext,qhead)
}
else
{
	qname="博丽灵梦"
	qtext="总觉得有股不详的预感呢。 "
	qhead=po04_RIMsis
	create_dhk(qname,qtext,qhead)
}