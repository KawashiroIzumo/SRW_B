///@description 设置召唤终点
lsx-=1
lsy+=1
if(lsx<=0)
{
	if(lsy<=4)
	{
		lsx=5
		lsy=1
		timeline_position=59
	}
}
else
{
	timeline_position=59
}