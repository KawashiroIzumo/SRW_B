/// @description Insert description here
// You can write your code in this editor
var vx,vy,vw,vh,mx,my;
mx=device_mouse_x_to_gui(0)
my=device_mouse_y_to_gui(0)
if(alarm[0]>0)
	draw_set_alpha(1-alarm[0]/20)
else draw_set_alpha(1)
var i;
vx=192
vy=256
vw=256
vh=200
for(i=0;i<flag_max;i++)
{
	draw_sprite(flag_pic[i],0,vx+vw/2,vy+vh/2)
	if(point_in_rectangle(mx,my,vx,vy,vx+vw,vy+vh)&&cold==false)
	{
		draw_set_alpha(0.5)
		draw_kuang(vx,vy,vx+vw,vy+vh,c_white)
		draw_set_alpha(1)
		draw_set_font(global.font_m)
		draw_set_halign(fa_center)
		draw_set_valign(fa_top)
		draw_set_color(0)
		qtext=flag_text[i]
		draw_text(vx+vw/2,vy+vh+8+2,qtext)
		draw_set_color(c_white)
		draw_text(vx+vw/2,vy+vh+8,qtext)
		if(mouse_check_button_pressed(mb_left))
		{
			audio_play_sound(SE02_onepoint24,1,0)
			global.cofing[? "languege"]=i
			instance_destroy()
		}
	}
	vx+=640
}

