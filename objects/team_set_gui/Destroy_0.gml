/// @description Insert description here
// You can write your code in this editor
var i;
for(i=0;i<robo_go_map_now;i++)
{
	if(robo_go_rlid[i]>=0)
	{
		var bid=robolist_bid[robo_go_rlid[i]]
		create_mrobo_base(bid,robo_go_map_x[i],robo_go_map_y[i],0)
	}
}
with(camera)
{
	follow=true
}
with(DND_player)
{
	turn_type=0
}