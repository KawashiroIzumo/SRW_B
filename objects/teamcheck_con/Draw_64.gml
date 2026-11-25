var vx,vy,vw,vh,mx,my,i,j,k,l;
draw_set_alpha(0.5)
draw_set_colour(0)
draw_rectangle(0,0,1280,720,0)
draw_set_alpha(1)
mx=device_mouse_x_to_gui(0)
my=device_mouse_y_to_gui(0)
draw_set_font(global.font_m)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if(ondraw)
{
	vx=32
	vy=16
	vw=256
	vh=48
	for(i=0;i<2;i++)//上边栏
	{
		draw_set_font(global.font_m)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		if(page==i)vh=60
		else vh=36
		colora=c_blue
		if(i==1)colora=make_color_rgb(192,0,0)
		
		if(cold==false&&point_in_rectangle(mx,my,vx,vy,vx+vw,vy+vh))
		{
			colora=c_yellow
			if(mouse_check_button_released(mb_left))
			{
				p_page=0
				page=i
			}
		}
		draw_kuang(vx,vy,vx+vw,vy+vh,colora)
		qtext="我方机体"
		if(i==1)qtext="敌方机体"
		draw_set_color(0)
		draw_text(vx+vw/2,vy+vh/2+2,qtext)
		draw_set_color(c_white)
		draw_text(vx+vw/2,vy+vh/2,qtext)
		vx+=vw+16
	}
	vx=32
	vy=80
	vw=928
	vh=592
	colora=c_navy
	if(page==1)colora=make_color_rgb(64,0,0)
	draw_kuang(vx,vy,vx+vw,vy+vh,colora)
	
	vh=64
	if(page==1)smax=ds_list_size(ls_list_enemy)
	else smax=ds_list_size(ls_list_ally)
	p_page_max=floor(smax /8)
	vy+=16
	for(i=0;i<8;i++)
	{
		colora=c_blue
		if(page==1)colora=make_color_rgb(192,0,0)
		
		j=i+8*p_page
		if(j>=smax)break
		else
		{
			if(page==1)mrid=ls_list_enemy[| j]
			else mrid=ls_list_ally[| j]
			
			if(mrid<0)continue
			if(global.mrobo_id[mrid]<0)continue
			
			rid=global.mrobo_id[mrid]
			if(cold==false&&point_in_rectangle(mx,my,vx,vy,vx+vw,vy+vh))
			{
				colora=c_yellow
				if(mouse_check_button_released(mb_left))
				{
					p_index=mrid
				}
			}
			ay=vy
			ax=vx+16
			aw=64
			ah=vh
			draw_kuang(ax,ay,ax+aw,ay+ah,colora)
			if(global.mrobo_E[mrid])draw_sprite(global.robo_icon[rid],3,ax+aw/2,ay+ah/2)
			else draw_sprite(global.robo_icon[rid],page,ax+aw/2,ay+ah/2)
			
			draw_set_font(global.font_m)
			draw_set_halign(fa_left)
			draw_set_valign(fa_middle)
			ax+=aw+16
			aw=400	
			draw_kuang(ax,ay,ax+aw,ay+ah,colora)
			qtext=global.robo_name[rid]
			draw_set_color(0)
			draw_text(ax+8,ay+ah/2+2,qtext)
			draw_set_color(c_white)
			draw_text(ax+8,ay+ah/2,qtext)
			
			ax+=aw+16
			aw=400
			draw_kuang(ax,ay,ax+aw,ay+ah,colora)
			draw_set_font(global.font_s)
			qtext="HP:"
			qtext+=string(global.mrobo_hp[mrid])+" / "+string(global.mrobo_hpm[mrid])
			draw_set_color(0)
			draw_text(ax+8,ay+ah*0.25+2,qtext)
			draw_set_color(c_white)
			draw_text(ax+8,ay+ah*0.25,qtext)
			qtext="EN:"
			if(global.robo_magic[rid])qtext="MP:"
			qtext+=string(global.mrobo_en[mrid])+" / "+string(global.mrobo_enm[mrid])
			draw_set_color(0)
			draw_text(ax+8,ay+ah*0.75+2,qtext)
			draw_set_color(c_white)
			draw_text(ax+8,ay+ah*0.75,qtext)
			
			vy+=vh+8
		}
	}
	//翻页
	vx=32
	vy=672
	vw=96
	vh=32
	colora=c_blue
	if(page==1)colora=make_color_rgb(192,0,0)
	if(p_page==0)colora=c_gray
	if(cold==false&&point_in_rectangle(mx,my,vx,vy,vx+vw,vy+vh)&&colora!=c_gray)
	{
		colora=c_yellow
		if(mouse_check_button_released(mb_left))
		{
			p_page--
		}
	}
	draw_kuang(vx,vy,vx+vw,vy+vh,colora)
	draw_sprite_ext(teamlist_arrow,0,vx+vw/2,vy+vh/2,1,1,0,c_white,1)
	
	vx+=vw
	vw=736
	colora=c_navy
	if(page==1)colora=make_color_rgb(64,0,0)
	draw_kuang(vx,vy,vx+vw,vy+vh,colora)
	
	aw=vw/(p_page_max+1)
	ax=vx+aw*p_page
	draw_kuang(ax,vy,ax+aw,vy+vh,c_yellow)
	
	draw_set_font(global.font_m)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	qtext=string(p_page+1)+" / "+string(p_page_max+1)
	draw_set_color(0)
		draw_text(vx+vw/2,vy+vh/2+2,qtext)
		draw_set_color(c_white)
		draw_text(vx+vw/2,vy+vh/2,qtext)
		
	vx+=vw
	vw=96
	colora=c_blue
	if(page==1)colora=make_color_rgb(192,0,0)
	if(p_page>=p_page_max)colora=c_gray
	if(cold==false&&point_in_rectangle(mx,my,vx,vy,vx+vw,vy+vh)&&colora!=c_gray)
	{
		colora=c_yellow
		if(mouse_check_button_released(mb_left))
		{
			p_page++
		}
	}
	draw_kuang(vx,vy,vx+vw,vy+vh,colora)
	draw_sprite_ext(teamlist_arrow,0,vx+vw/2,vy+vh/2,-1,1,0,c_white,1)
	
	//右边栏
	draw_set_font(global.font_m)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
		
	vx=992
	vy=80
	vw=256
	vh=256
	if(p_index<0)
	{
		colora=c_dkgray
		draw_kuang(vx,vy,vx+vw,vy+vh,colora)
		qtext="请选择一个机体"
		draw_set_color(0)
			draw_text(vx+vw/2,vy+vh/2+2,qtext)
			draw_set_color(c_white)
			draw_text(vx+vw/2,vy+vh/2,qtext)
	}
	else
	{
		colora=c_navy
		if(global.mrobo_team[p_index]==1)colora=make_color_rgb(64,0,0)
		draw_kuang(vx,vy,vx+vw,vy+vh,colora)
		blv=256/sprite_get_width(global.robo_spr_stand[global.mrobo_id[p_index]])
		draw_sprite_ext(global.robo_spr_stand[global.mrobo_id[p_index]],image_index,vx+vw/2,vy+vh/2,blv,blv,0,c_white,1)
	}
	
	vy+=vh+16
	vh=48
	if(p_index<0)
	{
		colora=c_dkgray
		qtext="UNDEFINED"
	}
	else
	{
		colora=c_navy
		if(global.mrobo_team[p_index]==1)colora=make_color_rgb(64,0,0)
		qtext=global.robo_name[global.mrobo_id[p_index]]
	}
	draw_kuang(vx-8,vy,vx+vw+8,vy+vh,colora)
	draw_set_font(global.font_s)
	draw_set_color(0)
	draw_text(vx+vw/2,vy+vh/2+2,qtext)
	draw_set_color(c_white)
	draw_text(vx+vw/2,vy+vh/2,qtext)
	draw_set_font(global.font_m)
	vy=560
	vh=64
	colora=c_blue
	if(page==1)colora=make_color_rgb(192,0,0)
	if(p_index<0)
	{
		colora=c_gray
	}
	if(cold==false&&point_in_rectangle(mx,my,vx,vy,vx+vw,vy+vh)&&colora!=c_gray)
	{
		colora=c_yellow
		if(mouse_check_button_released(mb_left))
		{
			onchoose=p_index
			cold=1
			alarm[1]=5
		}
	}
	qtext="确定选择"
	draw_kuang(vx,vy,vx+vw,vy+vh,colora)
	draw_set_color(0)
	draw_text(vx+vw/2,vy+vh/2+2,qtext)
	draw_set_color(c_white)
	draw_text(vx+vw/2,vy+vh/2,qtext)
	
	vy+=vh+16
	colora=c_blue
	if(page==1)colora=make_color_rgb(192,0,0)
	if(cold==false&&point_in_rectangle(mx,my,vx,vy,vx+vw,vy+vh)&&colora!=c_gray)
	{
		colora=c_yellow
		if(mouse_check_button_released(mb_left))
		{
			onchoose=-1
			cold=1
			alarm[1]=5
		}
	}
	qtext="返回"
	draw_kuang(vx,vy,vx+vw,vy+vh,colora)
	draw_set_color(0)
	draw_text(vx+vw/2,vy+vh/2+2,qtext)
	draw_set_color(c_white)
	draw_text(vx+vw/2,vy+vh/2,qtext)
}