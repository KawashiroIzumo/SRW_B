/// @description 老八对话内容
qname="岛市老八"
qtext=@"老铁啊，只有你们想不到的，没有我老八做不到的啊。"

qhead=po34_mr8
create_dhk(qname,qtext,qhead)
view_do_center_find_pliot(33)
a=mrobo_find_pliot(33)
if(a>=0)
{
	global.mrobo_ai[a]=1
}
