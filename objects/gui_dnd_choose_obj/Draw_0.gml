/// @description Insert description here
// You can write your code in this editor
with(DND_player)
{
	if(cold==false&&inchoose==false&&turn_type!=1&&instance_exists(fw_drawer))
	{
		var cflag=false,vx,vy,vw,vh,dx,dy,dka,ax,ay;
	    vx=64
	    vw=64
	    vy=64
	    vh=64
	    for(dy=0;dy<global.map_h[mapid];dy+=1)
	    {
	        for(dx=0;dx<global.map_w[mapid];dx+=1)
	        {
	            dka=global.map_dtype[mapid,dy*100+dx]
	            ax=vx+dx*vw
	            ay=vy+dy*vh
	            if(mouse_in(ax+1,ay+1,ax+vw-1,ay+vh-1))
	            {
	                draw_sprite(gui_dnd_choose,0,ax,ay)
				}
			}
		}
	}
}