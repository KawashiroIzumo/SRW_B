/// @description 绘制gui
display_set_gui_size(1280,720)
var mx,my,vx,vy,flag;
mx=device_mouse_x_to_gui(0)
my=device_mouse_y_to_gui(0)
if(ondrawing)
{
    draw_set_colour(0)
    draw_set_alpha(0.5)
    draw_rectangle(0,0,1920,1080,false)
    draw_set_alpha(1)
    
    vx=32
    vy=32
    vw=416
    vh=48
    for(i=1;i>=0;i--)
    {
        rteam=global.mrobo_team[mrid[i]]
        rid=global.mrobo_id[mrid[i]]
        if(rteam==1)colorb=c_red
        else colorb=c_blue
        draw_background_ext(GUI_battle_qr_base2,vx,vy,1,1,0,colorb,1);
        draw_set_blend_mode(bm_add)
        draw_background_ext(GUI_battle_qr_base2,vx,vy,1,1,0,colorb,1);
        draw_set_blend_mode(bm_normal)
        qtext=global.robo_name[rid]
        draw_text_dhk_colour("[\\xys:90]"+qtext,vx+32,vy+12,0)
        vx+=800
    }
    
    vx=32
    vy=96
    vw=468
    vh=287
    for(i=1;i>=0;i--)
    {
        rteam=global.mrobo_team[mrid[i]]
        rid=global.mrobo_id[mrid[i]]
        if(rteam==1)colorb=c_red
        else colorb=c_blue
        draw_background_ext(GUI_battle_qr_base1,vx,vy,1,1,0,colorb,1);
        draw_set_blend_mode(bm_add)
        draw_background_ext(GUI_battle_qr_base1,vx,vy,1,1,0,colorb,1);
        draw_set_blend_mode(bm_normal)
        qtext="HP : "
        qtext+=string(global.mrobo_hp[mrid[i]])+" / "+string(global.mrobo_hpm[mrid[i]])
        ax=vx+39
        ay=vy+20
        bx=ax+72
        by=ay+4
        bw=300
        bh=24
        draw_kuang(bx,by,bx+bw,by+bh,8)
        draw_kuang(bx,by,bx+bw*global.mrobo_hp[mrid[i]]/global.mrobo_hpm[mrid[i]],by+bh,colorb)
        draw_text_dhk_colour("[\\lxys:80]"+qtext,ax,ay,0)
        
        qtext="EN : "
        if(global.robo_magic[global.mrobo_id[mrid[i]]])qtext="MP : "
        qtext+=string(global.mrobo_en[mrid[i]])+" / "+string(global.mrobo_enm[mrid[i]])
        ay+=32
        by=ay+4
        bw=256
        draw_kuang(bx,by,bx+bw,by+bh,8)
        draw_kuang(bx,by,bx+bw*global.mrobo_en[mrid[i]]/global.mrobo_enm[mrid[i]],by+bh,colorb)
        draw_text_dhk_colour("[\\lxys:80]"+qtext,ax,ay,0)
        qtext="精神：#|"
        for(j=0;j<40;j++)
        {
            if(global.mrobo_buff[mrid[i],j]>=0)qtext+=global.buff_name[global.mrobo_buff[mrid[i],j]]+"|"
        }
        ay+=32
        draw_text_dhk_colour("[\\lxys:80]"+qtext,ax,ay,0)
        vx=1280-vw-32
    }
    vx=32
    vy=96
    for(i=1;i>=0;i--)
    {
        rteam=global.mrobo_team[mrid[i]]
        rid=global.mrobo_id[mrid[i]]
        pid=global.mrobo_pliot[mrid[i]]
        qtext=global.mrobo_pliot_c_name[mrid[i]]+"#"
        qtext+="气力 : "+string(global.mrobo_pliot_ql[mrid[i]])+"#"
        if(wid[i]>=0)qtext+=global.wep_name[wid[i]]
        else if(wid[i]==-2)qtext+="防御"
        else if(wid[i]==-3)qtext+="回避"
        else qtext+="什么也不做"
        qtext+="#"
        var mz;
        mz=min(100,max(0,wid_mz[i]))
        if(wid[i]>=0)qtext+="命中率 : "+string(mz)+"%"
        ax=vx+39
        ay=vy+176
        draw_text_dhk_colour("[\\lxys:80]"+qtext,ax,ay,0)
        vx=1280-vw-32
    }
    
    //
   
    vw=256
    vx=640-vw/2
    vh=256
    vy=320
    colorb=c_green
    draw_background_ext(GUI_battle_qr_base3,vx,vy,1,1,0,colorb,1);
    draw_set_blend_mode(bm_add)
    draw_background_ext(GUI_battle_qr_base3,vx,vy,1,1,0,colorb,1);
    draw_set_blend_mode(bm_normal)
    
    vh=32
    vw=218
    vy+=vh
    vx+=19
    //page==0，一级菜单
    for(i=0;i<4;i++)
    {
        if(i==0)
        {
            qtext="行动"
            if(mode!=1)continue;
        }
        else if(i==1)
        {
            qtext="战斗动画："
            if(battle_dh)qtext+="开启"
            else qtext+="关闭"
        }
        else if(i==3)
        {
            qtext="战斗开始"
        }
        else continue;
        colora=make_colour_rgb(0,128,128)
        if(point_in(vx,vy,vx+vw,vy+vh,mx,my)&&page==0)
        {
            if(colora!=c_gray)colora=make_colour_rgb(0,192,192)
            if(mouse_check_button(mb_left))
            {
                if(colora!=c_gray)colora=make_colour_rgb(255,255,128)
            }
            if(mouse_check_button_released(mb_left))
            {
                if(i==0)
                {
                    page=1
                    cold=true
                    alarm[3]=1
                }
                if(i==1)
                {
                    battle_dh=!battle_dh
                    global.drawing=battle_dh
                }
                if(i==3)
                {
                    ondrawing=false
                    ondrawing2=true
                    if(battle_dh)
                    {
                        if(global.robo_BGM[global.mrobo_id[mrid[0]]])
                        global.bgm=global.robo_BGM[global.mrobo_id[mrid[0]]]
                    }
                    flag_UI_alarm=80
                    var j=0;
                    if(upside_down)j=!j
                    battlecam_x=actors_x[j+2]
                    battlecam_y=actors_y[j+2]
                    if(battle_dh==false)alarm[2]=30
                    else
                    {   
                        var k;						
						actors_change_open_text(mrid[j],mrid[!j])
                    }
                    jd=0
                }
            }
        }
        draw_background_ext(GUI_battle_qr_base4,vx,vy,1,1,0,colora,1);
        draw_set_blend_mode(bm_add)
        draw_background_ext(GUI_battle_qr_base4,vx,vy,1,1,0,colora,1);
        draw_set_blend_mode(bm_normal)
        draw_text_dhk_colour("[\\lxys:80]"+qtext,vx+8,vy,0)
        vy+=vh+8
    }
    //page==1，二级菜单
    if(page==1)
    {
        vh=32
        vw=218
        vy=320-32
        vx+=19
        colorb=c_yellow
        draw_background_ext(GUI_battle_qr_base3,vx,vy,1,1,0,colorb,1);
        draw_set_blend_mode(bm_add)
        draw_background_ext(GUI_battle_qr_base3,vx,vy,1,1,0,colorb,1);
        draw_set_blend_mode(bm_normal)
        vh=32
        vw=218
        vy+=vh
        vx+=19
        draw_set_alpha(0.5)    
        draw_kuang(0,0,1280,720,6)
        draw_set_alpha(1)
        for(i=0;i<4;i++)
        {
            if(i==0)
            {
                qtext="武器"
                if(workout_attack_wep(mrid[i],true,mrid[!i])<0)
                    continue;
            }
            else if(i==1)
            {
                qtext="防御"
            }
            else if(i==2)
            {
                qtext="回避"
            }
            else if(i==3)
            {
                qtext="返回"
            }
            else continue;
            colora=make_colour_rgb(0,128,128)
            if(point_in(vx,vy,vx+vw,vy+vh,mx,my)&&cold=false)
            {
                if(colora!=c_gray)colora=make_colour_rgb(0,192,192)
                if(mouse_check_button(mb_left))
                {
                    if(colora!=c_gray)colora=make_colour_rgb(255,255,128)
                }
                if(mouse_check_button_released(mb_left))
                {
                    if(i==0)
                    {
                        page=2
                        choosedwid=-1
                        a=instance_create(0,0,ability_con)
                        a.mode=2
                        a.mrid=mrid[0]
                        a.tar_mrid=mrid[1]
                    }
                    if(i==1)
                    {
                        wid[0]=-2
                        wid_mz[1]=workout_mzl(wid[1],mrid[1],mrid[0])
                        page=0
                    }
                    else if(i==2)
                    {
                        wid[0]=-3
                        wid_mz[1]=workout_mzl(wid[1],mrid[1],mrid[0])/2
                        page=0
                    }
                    if(i==3)
                    {
                        page=0
                    }
                }
            }
            draw_background_ext(GUI_battle_qr_base4,vx,vy,1,1,0,colora,1);
            draw_set_blend_mode(bm_add)
            draw_background_ext(GUI_battle_qr_base4,vx,vy,1,1,0,colora,1);
            draw_set_blend_mode(bm_normal)
            draw_text_dhk_colour("[\\lxys:80]"+qtext,vx+8,vy,0)
            vy+=vh+8
        }
    }
    //page=2,接受武器传导
    if(page==2)
    {
        //show_message(string(choosedwid))
        if(choosedwid>=0)
        {
            page=0
            wid[0]=choosedwid
            wid_mz[1]=workout_mzl(wid[1],mrid[1],mrid[0])
            wid_mz[0]=workout_mzl(wid[0],mrid[0],mrid[1])
        }
    }
    if(mouse_check_button_released(mb_right))
    {
        if(mode==0)
        {
            with(attacking_drawer)drawing=true;
            flag_quxiao=true
            instance_destroy()
        }
    }
}

///绘制开启的战斗动画
display_set_gui_size(1280,720)
var mx,my,vx,vy,ax,ay,flag,i,ah,ahm;
mx=device_mouse_x_to_gui(0)
my=device_mouse_y_to_gui(0)
if(ondrawing2&&battle_dh==true)
{
	/*if(keyboard_check(vk_space))room_speed=120
	else room_speed=60
    if(eff=1)shader_set(shd11_s2_heibai)
    draw_set_alpha(1)
    draw_rectangle_colour(0,0,1280,720,c_aqua,c_aqua,c_dkgray,c_dkgray,false)
    //主体
    if(surface_exists(battleground))
    {
        draw_set_blend_mode(bm_normal)
        draw_surface_part(battleground,battlecam_x,battlecam_y-360,1280,720,0,0)
        draw_set_blend_mode(bm_normal)
    }
    if(flag_UI==true)
    {
        if(flag_UI_alarm>0)
        {
            flag_UI_alarm-=8
        }
        else flag_UI_alarm=0
    }
    else
    {
        if(flag_UI_alarm<160)
        {
            flag_UI_alarm+=8
        }
        else flag_UI_alarm=160
    }
    //UI部分
    var lspr=hp_enc
    if(global.robo_magic[global.mrobo_id[mrid[1]]])lspr=hp_enc_m
    draw_background_ext(lspr,0,0-flag_UI_alarm,1,1,0,16777215,1)
    draw_sprite(global.robo_icon[global.mrobo_id[mrid[1]]],global.mrobo_team[mrid[1]],40,40-flag_UI_alarm)
    var lspr=hp_enc
    if(global.robo_magic[global.mrobo_id[mrid[0]]])lspr=hp_enc_m
    draw_background_ext(lspr,1280,0-flag_UI_alarm,-1,1,0,16777215,1)
    draw_sprite(global.robo_icon[global.mrobo_id[mrid[0]]],global.mrobo_team[mrid[0]],1240,40-flag_UI_alarm)
    vx=100
    ax=80
    bx=100
    draw_set_font(global.font_m)
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    for(i=0;i<2;i++)
    {
        var j;
        j=-1
        if(jd==1||jd==5)
        {
            j=1
            if(jd==5)j=0
            if(upside_down)j=!j
        }
        ah=global.mrobo_hp[mrid[!i]]
        if(j==!i)
        {
            var ldmg;
            ldmg=dmg
            if(global.mrobo_hp[mrid[!i]]<ldmg)ldmg=global.mrobo_hp[mrid[!i]]
            ah-=ldmg*playdh_nowdmg
            if(playdh_nowdmg<playdh_mbdmg)playdh_nowdmg+=0.1
            else playdh_nowdmg=playdh_mbdmg  
            ah=floor(ah)          
        }
        ahm=global.mrobo_hpm[mrid[!i]]
        draw_background_part_ext(hpc,0,0,456*ah/ahm,22,ax,32-flag_UI_alarm,1-i*2,1,16777215,1)
        qtext=string(ah)+" / "+string(ahm)
        draw_set_colour(c_black)
        draw_text(bx,12-flag_UI_alarm+2,string_hash_to_newline(qtext))
        draw_set_colour(c_white)
        draw_text(bx,12-flag_UI_alarm,string_hash_to_newline(qtext))
    
        ah=global.mrobo_en[mrid[!i]]
        ahm=global.mrobo_enm[mrid[!i]]
        draw_background_part_ext(enc,0,0,320*ah/ahm,27,ax+16-i*32,96-flag_UI_alarm,1-i*2,1,16777215,1)
        qtext=string(ah)+" / "+string(ahm)
        draw_set_colour(c_black)
        draw_text(bx,56-flag_UI_alarm+2,string_hash_to_newline(qtext))
        draw_set_colour(c_white)
        draw_text(bx,56-flag_UI_alarm,string_hash_to_newline(qtext))
        
        vx=772
        ax=1200
        bx=1180
        draw_set_halign(fa_right)
    }
    vx=16
    vy=512+flag_UI_alarm*2
    vw=192
    vh=192
    draw_background(gui_DHK_bk_battle,0,flag_UI_alarm*2)
    for(j=0;j<2;j++)
    {
        pid=global.mrobo_pliot[mrid[j]]
        if(pid>=0&&actors_dhk_head==global.pliot_head[pid])
            actors_dhk_head=global.mrobo_pliot_c_head[mrid[j]]
    }
    if(sprite_exists(actors_dhk_head))
    {
        draw_sprite(actors_dhk_head,actors_dhk_face,vx,vy)
    }
    else 
        draw_sprite(po_noname,0,vx,vy)
    vx=234
    vw=1040
    vy=544
    qtext=actors_dhk_text
    var pos=string_pos("：",qtext)
    for(j=0;j<2;j++)
    {
        pid=global.mrobo_pliot[mrid[j]]
        if(string_copy(qtext,1,pos-1)==global.pliot_name[pid])
        {
            actors_dhk_text=global.mrobo_pliot_c_name[mrid[j]]+string_copy(qtext,pos,9999)
        }
    }
    qtext=actors_dhk_text
    draw_text_dhk_colour(qtext,vx+8,vy+8,vw-40)
    //绘制伤害
    if(nowdmg_ala>0)
    {
        qtext=string(nowdmg)
        vx=640
        vy=440
        if(nowdmg_ala>85)vy-=(nowdmg_ala-85)*16
        if(nowdmg_ala<5)vy-=(5-nowdmg_ala)*16
        draw_set_font(global.font_dmg)
        draw_set_halign(fa_center)
        draw_set_valign(fa_middle)
        draw_text_colour(vx,vy,string_hash_to_newline(qtext),c_orange,c_orange,c_red,c_red,1)
        nowdmg_ala-=1
    }
    //绘制特别信息
    vw=512
    vh=32
    vy=512-vh
    for(i=0;i<16;i++)
    {
        if(info_ala[i]>=0)
        {
            vx=16
            if(info_ala[i]>55)vx-=(info_ala[i]-55)*vw
            if(info_ala[i]<5)vx-=(5-info_ala[i])*vw
            draw_kuang(vx,vy,vx+vw,vy+vh,make_colour_rgb(0,128+irandom(4)-2,128+irandom(4)-2))
            draw_text_dhk_colour("[\\xys:100]"+info_qtext[i],vx+8,vy+2,0)
            info_ala[i]-=1
            vy-=vh-4
        }
    }
    if(jd==8)
    {
        with(attacking_drawer)instance_destroy()
        with(DND_player)inchoose=false
        if(mode==0){global.mrobo_E[mrid[0]]=true}
		instance_destroy()
		
    }
    shader_reset()
	*/
}

