/// @description 灵梦副技师对话内容
var a,rid;
a=mrobo_find_pliot(2)
rid=global.mrobo_id[a]
if(rid==1||rid==16)
{
	qname="射命丸文"
	qtext=@"我的直觉告诉我这里会有一个大新闻。
	"
	qhead=thh07_aya
}
else if(rid==17)
{
	qname="伊吹萃香"
	qtext=@"今天打完会有酒喝吗？
	"
	qhead=thh04_suika
}
else
{

	qname="八云紫"
	qtext=@"Zzzzzzz...........
	"
	qhead=thh18_yukari

}
create_dhk(qname,qtext,qhead)