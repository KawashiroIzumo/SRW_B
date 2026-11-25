/// @description 解除冻结
// You can write your code in this editor
cold=0
ondraw=true
with(DND_player)
{
	cold=false
	inchoose=false
	turn_type=10
}
with(camera)
{
	follow=true
}
var i;
#region 增加机体
for(i=0;i<100;i++)
{
	if(global.base_lock[i]==false&&global.base_enabled[i]=true&&global.base_rid[i]>=0)
	{
		 robolist_add_single(i)
	}
}
#endregion
//show_message("?")