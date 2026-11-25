/// @description 设置变量
// You can write your code in this editor
var i,j;
mapid=0
p_index=-1
p_page=0
depth=-8
with(DND_player)
{
	other.mapid=mapid
	if(depth<other.depth)other.depth=depth-2
}
cold=1
ondraw=false
alarm[0]=01
robo_go_max=8
robo_go_now=0
robo_go_map_now=0
robolist_max=0
for(i=0;i<300;i++)
{
	robolist_bid[i]=-1
	robolist_position[i]=-1
	
	robo_go_rlid[i]=-1
	robo_go_map_x[i]=-1
	robo_go_map_y[i]=-1
}
function robo_go_map_add_single(vx,vy)
{
	var i=robo_go_map_now
	robo_go_map_x[i]=vx
	robo_go_map_y[i]=vy
	robo_go_map_now=i+1
}
function robo_go_add_single(rlid)
{
	if(robolist_bid[rlid]<=0||robo_go_now>=robo_go_max)
	{
		return false;
	}
	else
	{
		var i;
		for(i=0;i<robo_go_map_now;i++)
		{
			if(robo_go_rlid[i]<0)
			{
				robo_go_now++
				robo_go_rlid[i]=rlid
				robolist_position[rlid]=i
				return true
			}
		}
		return false
	}
}
function robo_go_delete_single(rlid)
{
	if(robolist_bid[rlid]<=0||robo_go_now<=0)
	{
		return false;
	}
	else
	{
		var i=robolist_position[rlid]
		robo_go_now--
		robo_go_rlid[i]=-1
		robolist_position[rlid]=-1
		return true
	}
}
function robolist_add_single(bid)
{
	robolist_bid[robolist_max]=bid
	robolist_position[robolist_max]=-1
	robolist_max++
}
flag_menu=true