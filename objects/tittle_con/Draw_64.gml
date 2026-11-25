var mx,my,vx,vy,flag=false,mclick_ing=mouse_check_button(mb_left),mclick_ed=mouse_check_button_released(mb_left);
mx=device_mouse_x_to_gui(0)
my=device_mouse_y_to_gui(0)

display_set_gui_size(1280,720)
//draw_background(tittle_bk,0,0)
if(alarm[0]>30)
{
    draw_background_part_ext(tittle_TEXT,0,0,1280*(1.5-alarm[0]/60),720,0,43,1,1,c_white,1);
    draw_background_part_ext(tittle_TEXT,1280*(1.5-alarm[0]/60),0,1280*alarm[0]/60,720,1280*(1.5-alarm[0]/60),43,100,1,c_white,1);
}
else
{
	draw_set_color(c_white)
	var t=(30-alarm[0])/30;
	if(alarm[0]<=0)t=1
	vx=40
	vy=208-(1-t)*256
	vw=440
	vh=32
	flag=false
	for(i=0;i<button_num;i+=1)
	{
		if(vy>128)
		{
			ax=vx
			if(t==1)
			{
				if(cold==false&&point_in_rectangle(mx,my,ax,vy-vh/2,ax+vw,vy+vh/2))
				{
					flag=true
					if(index!=i)
					{
						audio_play_sound(sound3_Cursor,1,0)
						index=i
					}
				}
				if(index==i)
				{
					draw_sprite(tittle_button_new,0,16,vy)
					ax+=24
					if(mclick_ed)
					{
						audio_play_sound(ME00_choose,1,0)
		                if(i==0)
		                {
		                    audio_stop_sound(BGMsrwOP_geernika)
		                    room_goto_next();
		                }
		                else if(i==1)
		                {
		                    instance_create(0,0,tittle_load)
		                    cold=true
		                }
		                else if(i==2)
		                {
							var dflag=true;
							var _c=["imyourfather_con.txt","imyourfather_lic.json","imyourfather_mrobo.json","imyourfather_sod.json"]
							for(j=0;j<4;j++)
							{
								if(!file_exists("quicksave\\"+_c[j]))
								{
									dflag=false
									break
								}
							}
							if(dflag)
							{
								audio_stop_sound(BGMsrwOP_geernika)
								room_goto(continue_stage);
							}
							else 
							{
								audio_play_sound(sound0_Cancel,1,0)
							}
		                }
						else if(i==3)
						{
							room_goto(languege_choose_room)
						}
		                else if(i==4)game_end();
					}
				}
			}
			draw_set_font(global.font_m_blk)
			draw_set_color(c_white)
			draw_set_halign(fa_left)
			draw_set_valign(fa_middle)
			draw_text(ax,vy-2,button_text[i,global.cofing[? "languege"]])
		}
		vy+=vh+16
		draw_line_width(16,174,16,174+t*320,8)
		draw_background(tittle_TEXT,0,43)
	}
}
if(!flag)index=-1
draw_set_font(global.font_s)
draw_set_halign(fa_right)
draw_set_valign(fa_bottom)
qtext="2020 边境巡线人"
vx=1268
vy=708
draw_set_color(c_white)
draw_text(vx,vy,qtext)
