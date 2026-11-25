var dx,dy,vx,vy,vw,vh,dka,ax,ay,bx,by,bw,bh,bflag,cd_t,cd_tmax,ls_long,mx,my,rid,lspr;
mx=device_mouse_x_to_gui(0)
my=device_mouse_y_to_gui(0)
display_set_gui_size(1280,720)
if(!cold&&instance_exists(fw_drawer)==false&&turn_type==0)
{
    mouse_dx=min(max(floor((mouse_x-64)/64),0),29)
    mouse_dy=min(max(floor((mouse_y-64)/64),0),29)
    if(mouse_dx>=0&&mouse_dy>=0)
    {
        var drid=global.map_dtype[mapid,mouse_dx+mouse_dy*100];
        vx=16
        if(inchoose&&onchoose>=0&&global.mrobo_x[onchoose]>=25)vx=1280-208
        vy=16
        vw=192
        vh=128
        if(mx>=vx&&mx<vx+vw&&my<=192)vy=window_get_height()-vh-16
		colora=c_blue
		draw_sprite_ext(GUI_activemenu_dtype,0,vx,vy,1,1,0,colora,draw_get_alpha())
		gpu_set_blendmode(bm_add)
        draw_sprite_ext(GUI_activemenu_dtype,0,vx,vy,1,1,0,colora,draw_get_alpha())
		gpu_set_blendmode(bm_normal)
        qtext=global.dtype_name[drid]
        qtext+="#防御 "
        if(global.dtype_def[drid]>=0)qtext+="+"
        qtext+=string(global.dtype_def[drid])+"%"
        qtext+="#闪避 "
        if(global.dtype_ac[drid]>=0)qtext+="+"
        qtext+=string(global.dtype_ac[drid])+"%"
        draw_text_dhk_colour(qtext,vx+8,vy,0)
    }
}

//绘制行动菜单
if(G_cold==false&&inchoose&&instance_exists(fw_drawer)==false)
{
    if(onchoose>=0&&global.mrobo_id[onchoose]>=0)
    {
        if(mouse_check_button_released(mb_right))
        {
            if(moved)//逐级返回
            {
                moved=false
                global.mrobo_x[onchoose]=lsx
                global.mrobo_y[onchoose]=lsy
                a=instance_create(0,0,moving_drawer)
                a.mrid=onchoose
                a.mapid=mapid
                a.svx=__view_get( e__VW.XView, 0 )
                a.svy=__view_get( e__VW.YView, 0 )
                camera.follow=true
            }
            else
            {
				moved=false
                inchoose=false
                onchoose=-1
                camera.follow=true
            }
        }
        else
        {
            dx=global.mrobo_x[onchoose]
            dy=global.mrobo_y[onchoose]
            dka=global.map_dtype[mapid,dy*100+dx]
            ax=1280-272
            if(global.mrobo_x[onchoose]>=25)ax=16
            ay=16
            colora=make_colour_rgb(0,0,128)
            if(global.mrobo_team[onchoose]==1)colora=make_colour_rgb(128,0,0)
            draw_sprite_ext(GUI_activemenu_avandar,0,ax,ay-16,1,1,0,colora,draw_get_alpha())
			gpu_set_blendmode(bm_add)
            draw_sprite_ext(GUI_activemenu_avandar,0,ax,ay-16,1,1,0,colora,draw_get_alpha())
			gpu_set_blendmode(bm_normal)
            rid=global.mrobo_id[onchoose]
            lspr=global.robo_spr_stand[rid]
			var blv=(256/sprite_get_width(lspr))*0.8
			if(sprite_exists(global.robo_spr_spine[rid]))blv=0.33*0.8
            draw_sprite_ext(lspr,0,ax+128,ay+128,blv,blv,0,c_white,1)
            qtext="[\\xys:60]HP "+string(global.mrobo_hp[onchoose])+"/"+string(global.mrobo_hpm[onchoose])
            qtext+="#[\\xys:60]EN "+string(global.mrobo_en[onchoose])+"/"+string(global.mrobo_enm[onchoose])
            draw_text_dhk_colour(qtext,ax+8,ay+8,224)
            ay+=272
            bw=256
            ah=48
            bh=48
            bx=ax
            by=ay
            if(by>=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2)bflag=true
            else bflag=false
            if(moved)
            {
                cd_t=11
                cd_tmax=15
            }
            else
            {
                cd_t=0
                cd_tmax=11
            }
            for(i=cd_t;i<cd_tmax;i++)
            {
                colora=make_colour_rgb(0,128,128)
                if(i!=10&&i!=8)
                {  
                    if(onchoose<0||onchoose>256)continue;
                    else if(turn_type!=global.mrobo_team[onchoose])continue;
                    if(global.mrobo_E[onchoose])continue;
                }
                if(i==0)
                {
                    qtext="移动"
                }
                else if(i==1)
                {
                    if(global.map_space[mapid])continue;
                    if(global.mrobo_fly[onchoose])
                    {
                        qtext="降落"
                        if(global.robo_place_go[global.mrobo_id[onchoose],1]==false)continue;
                    }
                    else 
                    {
                        qtext="升空"
						if(global.map_bks_sky[mapid]==bks00_universal)qtext="宇宙"
                        if(global.robo_place_go[global.mrobo_id[onchoose],0]==false)continue;
                    }
                }
                else if(i==3)
                {
                    qtext="精神"
                }
                else if(i==4)
                {
                    qtext="芯片"
                    continue;
                }
                else if(i==5)
                {
                    qtext="变形"
                    var rid;
                    rid=global.mrobo_id[onchoose]
                    if(global.robo_transform[rid,0]<0)continue;
                }
                else if(i==6)
                {
                    qtext="分离"
                    var rid;
                    rid=global.mrobo_id[onchoose]
                    if(global.robo_fl[rid,0]<0)continue;
                }
                else if(i==7||i==12)
                {
                    qtext="修理"
                    var rid=global.mrobo_id[onchoose],k=0,vflag=false;
					for(k=0;k<20;k++)
					{
						if(global.robo_special[rid,k]==22)vflag=true
					}
					if(!vflag)continue;
                }
                else if(i==8)
                {
                    qtext="发进"
                    var rid;
                    rid=global.mrobo_id[onchoose]
                    if(global.robo_ship[rid]==false)continue;
                    else
                    {
                        var sflag=false;
                        for(j=0;j<40;j++)
                        {
                            if(global.mrobo_base[onchoose,j]>=0)
                            {
                                sflag=true
                                break
                            }
                        }
                        if(sflag==false)continue;
                    }
                }
                else if(i==9)
                {
                    qtext="补给"
					var rid=global.mrobo_id[onchoose],k=0,vflag=false;
					for(k=0;k<20;k++)
					{
						if(global.robo_special[rid,k]==23)
						{
							vflag=true
							break
						}
					}
					if(vflag)
					{
						vflag=false
						for(k=0;k<256;k++)
						{
							if(global.mrobo_id[k]>=0)
							{
								if(spiritbool_danmaged_buji(k))
								{
									vflag=true
									break
								}
							}
						}
					}
					if(!vflag)continue;
                }
				else if(i==10)
                {
                    qtext="能力"
                }
                else if(i==11||i==2)
                {
                    qtext="攻击"   
                    var sflag;             
                    sflag=false
                    if(i==2||find_buff(onchoose,9)>=0)sflag=true
                    if(global.onship>=0)continue;
                    if(workout_can_atk(onchoose,sflag)==false)
                    {
                        continue;
                    }
                    
                }
                else if(i==14)
                {
                    if(global.onship>=0)continue;
                    qtext="待机"                
                }
                else if(i==13)
                {
                    if(global.onship<0)continue;
                    qtext="搭载"
                }
                else
                {
                    qtext="抠脚"
                    colora=c_gray
                }
                bh=ah
                if(mx>bx&&my>by&&mx<bx+bw&&my<by+bh&&cold==false)
                {
                    bh+=16
                    if(colora!=c_gray)colora=make_colour_rgb(0,192,192)
                    if(mouse_check_button(mb_left))
                    {
                        if(colora!=c_gray)colora=make_colour_rgb(255,255,128)
                    }
                    if(mouse_check_button_released(mb_left)&&colora!=c_gray&&G_cold==0)
                    {
                        if(i==0)//选择移动的场合
                        {
                            lsx=global.mrobo_x[onchoose]
                            lsy=global.mrobo_y[onchoose]
                            a=instance_create(0,0,moving_drawer)
                            a.mrid=onchoose
                            a.mapid=mapid
                            a.svx=__view_get( e__VW.XView, 0 )
                            a.svy=__view_get( e__VW.YView, 0 )
                            camera.follow=true
                        }
                        if(i==1)//选择升降的场合
                        {
                            global.mrobo_fly[onchoose]=!global.mrobo_fly[onchoose]
                        }
                        else if(i==11||i==2)//选择攻击的场合
                        {
                            a=instance_create(0,0,ability_con)
                            a.mrid=onchoose
                            a.mode=1//0=通常,1=攻击
                            if(i==11)a.stand=false
                            else a.stand=true
                            a.mapid=mapid
                        }
                        else if(i==3)//选择精神的场合
                        {
                            a=instance_create(0,0,spirit_choose_con)
                            a.mrid=onchoose
                            a.mapid=mapid
                        }
                        else if(i==5)//选择变形的场合
                        {
                            cold=true
                            with(camera)follow=false
                            a=instance_create(64+global.mrobo_x[onchoose]*64,64+global.mrobo_y[onchoose]*64,transform_con)
                            a.mrid=onchoose
                        }
                        else if(i==6)//选择分离的场合
                        {
                            cold=true
                            with(camera)follow=false
                            a=instance_create(64+global.mrobo_x[onchoose]*64,64+global.mrobo_y[onchoose]*64,takeoff_con)
                            a.mrid=onchoose
                        }
                        else if(i==8)//选择发进的场合
                        {
                            cold=true
                            with(camera)follow=false
                            a=instance_create(64+global.mrobo_x[onchoose]*64,64+global.mrobo_y[onchoose]*64,shiptakeoff_con)
                            a.mrid=onchoose
                        }
						else if(i==9)//选择补给的场合
						{
							a=instance_create(0,0,target_drawer)
							a.source=onchoose
							a.target_draw_mode=1//绘制范围
							a.target_long=1
						    a.target_team=0
						    a.target_exe=spiritSP_buji
						    a.target_ignore=spiritbool_danmaged_buji
							camera.follow=true
						}
                        else if(i==10)//选择能力的场合
                        {
                            a=instance_create(0,0,ability_con)
                            a.mrid=onchoose
                            a.mapid=mapid
                        }
                        else if(i==14)//选择待机的场合
                        {
                            moved=false
                            global.mrobo_E[onchoose]=true
                            a=find_buff(onchoose,8)
                            if(a>=0)global.mrobo_buff[a]=-1
                            inchoose=false
                            onchoose=-1
                            camera.follow=true
                        }
                        else if(i==13)//选择搭载的场合
                        {
                            for(j=0;j<40;j++)
                            {
                                if(global.mrobo_base[global.onship,j]<0)
                                {
                                    global.mrobo_base[global.onship,j]=onchoose
                                    global.mrobo_E[onchoose]=true
                                    global.mrobo_onship[onchoose]=true
                                    global.mrobo_x[onchoose]=-100
                                    global.mrobo_y[onchoose]=-100
                                    break;
                                }
                            }
                            moved=false
                            global.onship=-1
                            inchoose=false
                            onchoose=-1
                            camera.follow=true
                        }
						else if(i==7||i==12)//选择修理的场合
						{
							a=instance_create(0,0,target_drawer)
							a.source=onchoose
							a.target_draw_mode=1//绘制范围
							a.target_long=2
						    a.target_team=0
						    a.target_exe=spiritSP_repair
						    a.target_ignore=spiritbool_danmaged_repair
							camera.follow=true
						}
                    }
                }
                draw_sprite_ext(GUI_activemenu_choose,0,bx,by,1,1,0,colora,draw_get_alpha())
				gpu_set_blendmode(bm_add)
                draw_sprite_ext(GUI_activemenu_choose,0,bx,by,1,1,0,colora,draw_get_alpha())
				gpu_set_blendmode(bm_normal)
                draw_set_colour(c_white)
                draw_text_dhk_colour(qtext,bx+8,by+4,0)
                by+=bh+8
            }
        }
    }
}

