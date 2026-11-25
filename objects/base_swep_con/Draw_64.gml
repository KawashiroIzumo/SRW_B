if(ondraw)
{
    if(targetb<0)instance_destroy()
    else if(global.base_rid[targetb]<0)instance_destroy()
    else
    {
        var vx,vy,vw,vh,mx,my,i,j,k,l;
        var rid=global.base_rid[targetb]
        mx=window_mouse_get_x()
        my=window_mouse_get_y()
        draw_set_alpha(1)
        draw_rectangle_colour(0,0,1280,720,0,0,192,0,0)
        vx=52
        vy=40
        vw=640
        vh=256
        colora=make_colour_rgb(0,0,128)
        draw_kuang(vx,vy,vx+vw,vy+vh,colora)
        draw_sprite_ext(global.robo_spr_stand[rid],jt_image,vx+vw/2,vy+vh/2,0.25,0.25,0,16777215,1)
        draw_text_dhk_colour(global.robo_name[rid],vx+8,vy+8,0)
        jt_image=(jt_image mod sprite_get_number(global.robo_spr_stand[rid]))+1
        vw=504
        vx=724
        draw_kuang(vx,vy,vx+vw,vy+vh,colora)
        vh=32
        wep_choose=-1
        for(j=0;j<8;j++)
        {
            qtext="[\\c:16777215][\\xys:80]"
            if(global.base_wep[targetb,j]>=0)
            {
                wid=global.base_wep[targetb,j]
                if(!global.base_wep_extra[targetb,j])qtext+="[\\c:"+string(c_gray)+"]"
                if(global.base_wep_enabled[targetb,j])qtext+=global.wep_name[wid]
                else qtext+="？？？？"
                if(point_in(vx,vy,vx+vw,vy+vh,mx,my)&&cold==false&&global.base_wep_extra[targetb,j])
                {
                    wep_choose=wid
                    draw_rectangle_colour(vx,vy,vx+vw,vy+32,c_white,c_white,c_white,c_white,true)
                    if(mouse_check_button(mb_left))
                    {
                        draw_rectangle_colour(vx,vy,vx+vw,vy+32,c_navy,c_aqua,c_navy,c_navy,0)
                    }
                    if(mouse_check_button_released(mb_left))
                    {
                        audio_play_sound(sound23_reload,1,0)
                        global.wep_base_sum[wid]++
                        global.base_wep[targetb,j]=-1
                        global.base_wep_extra[targetb,j]=0
                    }
                }
            }
            else qtext+="---------"
            draw_text_dhk_colour(qtext,vx+4,vy+4,0)
            vy+=32
        }
        
        vx=52
        vy=312
        vw=1176
        vh=368
        colora=make_colour_rgb(0,0,255)
        draw_kuang(vx,vy,vx+vw,vy+vh,colora)
        vh=36
        vw=1176
        draw_set_font(global.font_m)
        draw_set_halign(fa_center)
        draw_set_valign(fa_middle)
        draw_set_colour(0)
        draw_text(vx+vw/2+2,vy+vh/2+2,string_hash_to_newline("↓武器库↓"))
        draw_set_colour(16777215)
        draw_text(vx+vw/2,vy+vh/2,string_hash_to_newline("↓武器库↓"))
        /*
        for(i=0;i<button_num;i++)
        {
            colora=make_colour_rgb(0,128,128)
            if(cold)colora=c_gray;
            if(page==i)colora=c_olive
            if(point_in(vx,vy,vx+vw,vy+vh,mx,my)&&colora!=c_gray&&i!=page)
            {
                colora=make_colour_rgb(0,192,192)
                if(mouse_check_button(mb_left))
                {
                    colora=make_colour_rgb(255,192,192)
                }
                if(mouse_check_button_released(mb_left))
                {
                    audio_play_sound(sound35_piano1,1,0)
                    page=i
                }
            }
            qtext=button_text[i,0] 
            if(page==i)
            {
                draw_kuang(vx,vy,vx+vw,vy+vh+8,colora);
                draw_text_dhk_colour(qtext,vx+4,vy+12,0)
            }
            else
            {
                draw_kuang(vx,vy,vx+vw,vy+vh,colora);
                draw_text_dhk_colour(qtext,vx+4,vy+4,0)
            }
            vx+=vw+16
        }
        */
        vx=52
        vw=1176
        vy+=vh+16
        draw_line_width_colour(vx,vy,vx+vw,vy,5,c_white,c_white)
        vy+=4
        vh=32
        vw=294
        nowi=0
        for(i=0;i<global.wep_num;i++)
        {
            qtext="[\\c:16777215][\\xys:80]"
            if(global.wep_base_sum[i]>0)
            {
                qtext+=global.wep_name[i]
                qtext+=" x"+string(global.wep_base_sum[i])
                if(point_in(vx,vy,vx+vw,vy+vh,mx,my)&&cold==false)
                {
                    wep_choose=i
                    draw_rectangle_colour(vx,vy,vx+vw,vy+32,c_white,c_white,c_white,c_white,true)
                    if(mouse_check_button(mb_left))
                    {
                        draw_rectangle_colour(vx,vy,vx+vw,vy+32,c_navy,c_aqua,c_navy,c_navy,0)
                    }
                    if(mouse_check_button_released(mb_left))
                    {
                        var vflag=false
                        for(j=0;j<8;j++)
                        {
                            if(global.base_wep[targetb,j]==i)
                            {
                                audio_play_sound(SE03_onepoint33,1,0)
                                vflag=true
                                break;
                            }
                        }
                        if(!vflag)
                        {
                            for(j=0;j<8;j++)
                            {
                                if(global.base_wep[targetb,j]<0)
                                {
                                    audio_play_sound(sound23_reload,1,0)
                                    global.wep_base_sum[i]--
                                    global.base_wep[targetb,j]=i
                                    global.base_wep_extra[targetb,j]=1
                                    vflag=true
                                    break;
                                }
                            }
                        }
                        if(!vflag)audio_play_sound(SE03_onepoint33,1,0)
                    }
                }
                draw_text_dhk_colour(qtext,vx+4,vy+4,0)
                vy+=32
                if(vy+32>=680)
                {
                    vy=424
                    vx+=vw
                }
            }            
        }
        
        
        //显示武器详述
        if(wep_choose>=0)
        {
            vx=mx+32
            vy=my+32
            vw=480
            vh=320
            if(vx+vw>=1280)vx-=vw+64
            if(vy+vh>=720)vy-=vh
            draw_kuang(vx,vy,vx+vw,vy+vh,c_blue);
            i=wep_choose
            qtext="【"+global.wep_name[i]+"】#"
            qtext+="[\\lxys:75]"
            if(global.wep_combat[i])
                qtext+="|格|"
            else
                qtext+="|射|"
            if(global.wep_move[i])qtext+="移|"
            if(global.wep_beam[i])qtext+="光|"
            if(global.wep_funnel[i])qtext+="浮游炮|"
            if(global.wep_missle[i])qtext+="导弹|"
            qtext+="#"
            qtext+="基础威力:"+string(global.wep_atk[i])+"#"
            qtext+="基础射程:"+string(global.wep_short[i])
            if(global.wep_long[i]>1)qtext+="~"+string(global.wep_long[i])
            qtext+="#"
            qtext+="命中："
            if(global.wep_aim[i]>0)qtext+="+"
            qtext+=string(global.wep_aim[i])+"#"
            qtext+="暴击："
            if(global.wep_ct[i]>0)qtext+="+"
            qtext+=string(global.wep_ct[i])+"#"
            if(global.wep_ql[i]>0)qtext+="要求气力："+string(global.wep_ql[i])+"#"
            if(global.wep_en[i]>0)qtext+="要求EN："+string(global.wep_en[i])+"#"
            if(global.wep_bullet[i]>0)qtext+="基础弹数："+string(global.wep_bullet[i])+"#"
            for(j=0;j<4;j++)
            {
                if(j==0)qtext+="|空|："
                else if(j==1)qtext+="|陆|："
                else if(j==2)qtext+="|水|："
                else qtext+="|宇|："
                if(global.wep_place[i,j]==0)qtext+="- "
                else if(global.wep_place[i,j]==1)qtext+="C "
                else if(global.wep_place[i,j]==2)qtext+="B "
                else if(global.wep_place[i,j]==3)qtext+="A "
                else qtext+="S "
            }
            qtext+="#"
            draw_text_dhk_colour(qtext,vx+4,vy+8,vw-40)
        }
    }
    if(!cold&&mouse_check_button_released(mb_right))
    {
        instance_destroy()
    }
}

/* */
/*  */
