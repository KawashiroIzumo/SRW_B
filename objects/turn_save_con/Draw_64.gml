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
vx=48
vy=240
vw=1280-96
vh=140
colora=make_colour_rgb(0,0,128)
draw_kuang(vx,vy,vx+vw,vy+vh,colora)
if(save_sucessfull)
{
	qtext="保存成功，之后需要继续进行游戏吗？"
	if(global.cofing[? "languege"]==1)qtext="成功节约后，不需要透出游戏吗？"
}
else
{
	qtext="保存中，请不要强制结束游戏运行……"
	if(global.cofing[? "languege"]==1)qtext="请不要在节约过程中力量比赛结束..."
}
draw_text_dhk_colour(qtext,vx+8,vy+8,vw-16)

vy+=vh+16
vh=64
vw/=2
vw-=16
for(i=0;i<2;i++)
{
    colora=make_colour_rgb(0,128,128)
    if(mx>=vx&&mx<=vx+vw&&my>=vy&&my<=vy+vh&&cold=false&&colora!=c_gray)
    {
        colora=make_color_rgb(255,255,128)
        if(mouse_check_button_released(mb_left))
        {  
            audio_play_sound(ME00_choose,1,0)
            if(i==0)
            {
                alarm[1]=1
                cold=true
            }
            else
            {
                room_goto(save_end_room)
            }
        }
    }
    draw_kuang(vx,vy,vx+vw,vy+vh,colora)
    qtext="是"
    if(i==1)
	{
		qtext="否"
		if(global.cofing[? "languege"]==1)qtext="呗"
	}
    draw_set_colour(0)
    draw_text(vx+vw/2+2,vy+vh/2+2,string_hash_to_newline(qtext))
    draw_set_colour(16777215)
    draw_text(vx+vw/2,vy+vh/2,string_hash_to_newline(qtext))
    vx+=vw+32
}

