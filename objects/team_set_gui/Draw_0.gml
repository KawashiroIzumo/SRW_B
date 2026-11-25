/// @description 地图格子绘制
// You can write your code in this editor
var vx,vy,vw,vh,dx,dy,ax,ay,colora;
vx=64
vw=64
vy=64
vh=64
for(i=0;i<robo_go_map_now;i++)
{
	dx=robo_go_map_x[i]
	dy=robo_go_map_y[i]
	if(dx<global.map_w[mapid]&&dy<global.map_h[mapid]&&dx>=0&&dy>=0)
	{
	    ax=vx+dx*vw
	    ay=vy+dy*vh
	    if(1)
	    {
	        draw_set_alpha(0.5)
	        colora=make_colour_rgb(124+abs(128-image_index*4),255,124+abs(128-image_index*4))
	        draw_set_colour(colora);
	        draw_rectangle(ax+1,ay+1,ax+vw-1,ay+vh-1,false)
	        draw_set_alpha(1)
	        draw_set_colour(c_white)
			if(robo_go_rlid[i]>=0)
			{
				var rid=global.base_rid[robolist_bid[robo_go_rlid[i]]]
				if(rid>=0)
				{
					draw_sprite_ext(global.robo_icon[rid],0,ax+vw/2,ay+vh/2,1,1,0,c_white,.5)
				}
			}
			draw_text_dhk_colour(string(i+1),ax+8,ay+8,0)
	    }
	}
}
