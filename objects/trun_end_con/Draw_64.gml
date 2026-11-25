var vx,vy,vw,vh,mx,my;
mx=device_mouse_x_to_gui(0)
my=device_mouse_y_to_gui(0)
display_set_gui_size(1280,720)
draw_set_colour(0)
draw_set_alpha(0.5)
draw_rectangle(0,0,1920,1080,false)
if(instance_exists(empty_obj)||instance_exists(DHK))
{
    instance_destroy()
}
else
{
    vx=16
    vy=16
    vw=384
    vh=96
    qtext="回合数："
	if(global.cofing[? "languege"]==1)qtext="圆："
    qtext+=string(global.turn_num)
    qtext+="#金钱数："+string(global.money)
    draw_set_alpha(1)
    draw_kuang(vx,vy,vx+vw,vy+vh,c_blue)
    draw_text_dhk_colour("[\\c:d8]"+qtext,vx+8,vy+8,0)

    vx=64
    vy=144
    vw=384
    vh=48
    flag=false
    for(i=0;i<5;i++)
    {
        colora=make_colour_rgb(0,128,128)
        if(i==0)
        {
            qtext="回合结束"
			if(global.cofing[? "languege"]==1)qtext="结束弯道"
        }
        else if(i==1)
        {
            qtext="胜利条件"
			if(global.cofing[? "languege"]==1)qtext="胜利态"
        }
        else if(i==2)
        {
            qtext="部队表"
			if(global.cofing[? "languege"]==1)qtext="力表"
            //colora=c_gray
        }
        else if(i==3)
        {
            qtext="检索"
            colora=c_gray
        }
        else if(i==4)
        {
            qtext="中途保存"
			if(global.cofing[? "languege"]==1)qtext="节省一半"
        }
        draw_set_alpha(1)    
        if(mx>vx&&my>vy&&mx<vx+vw&&my<vy+vh&&cold=false)
        {
            if(colora!=c_gray)colora=make_colour_rgb(0,192,192)
            if(mouse_check_button(mb_left))
            {
                if(colora!=c_gray)colora=make_colour_rgb(255,255,128)
                }
            if(mouse_check_button_released(mb_left)&&colora!=c_gray)
            {
                if(i==0)
                {
                    flag=true
                    for(i=0;i<256;i++)
                    {
                       global.mrobo_E[i]=false
                    }
                    with(DND_player)
                    {
                        turn_type=1
                        turn_e_now=-1
                        alarm[1]=30
                        cold=true
                    }
                    with(camera)
                    {
                        follow=false
                    }
                    instance_destroy()
                    instance_create(0,0,em_turn)
                    global.bgm=global.roombgm
                }
                if(i==1)
                {
                    cold=true
                    instance_create(0,0,task_winlose_con)
                }
				if(i==2)
                {
					cold=true
					instance_create_depth(0,0,depth-1,teamlist_con)
				}
                if(i==4)
                {
                    cold=true
                    instance_create(0,0,turn_save_con)
                }
            }
        }
        draw_kuang(vx,vy,vx+vw,vy+vh,colora)
        draw_text_dhk_colour(qtext,vx+4,vy+4,0)
        vy+=vh+8
    }
    draw_circle_colour(mx,my,10,c_white,c_red,false)
    if(mouse_check_button_released(mb_right)&&flag==false&&cold==false)
    {
        with(DND_player)
        {                
            cold=false
        }
        instance_destroy()
    }
    draw_set_alpha(1)
}

