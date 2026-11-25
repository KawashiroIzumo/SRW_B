var colorb,colora,vx,vy,vw,vh,qtext,colora,mx,my;
if(mode>=1)page=2
mx=device_mouse_x_to_gui(0)
my=device_mouse_y_to_gui(0)
display_set_gui_size(1280,720)
if(ondraw)
{
    //机体名称
    draw_set_colour(0)
    draw_set_alpha(1)
    draw_rectangle(0,0,1280,720,false)
    if(rteam==1)colorb=make_colour_rgb(128,0,0)
    else colorb=make_colour_rgb(0,0,160)
    vx=32
    vy=32
    vw=384
    vh=48
    draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
    qtext=global.robo_name[rid]
    draw_text_dhk_colour(qtext,vx+4,vy+4,0)
    
    //翻页按钮
    vx=448
    vy=32
    vw=256
    vh=48
    for(i=0;i<3;i++)
    {
        colora=make_colour_rgb(0,128,128)
        if(cold)colora=c_gray;
        if(i<2&&mode==1)colora=c_gray
        if(point_in(vx,vy,vx+vw,vy+vh,mx,my)&&colora!=c_gray)
        {
            colora=make_colour_rgb(0,192,192)
            if(mouse_check_button(mb_left))
            {
                colora=make_colour_rgb(255,192,192)
            }
            if(mouse_check_button_released(mb_left))
            {
                page=i
                p_page=-1
            }
        }
        draw_kuang(vx,vy,vx+vw,vy+vh,colora);
        if(i==0)qtext="机体能力"
        else if(i==1)qtext="机师能力"
        else qtext="武器能力"
        draw_text_dhk_colour(qtext,vx+4,vy+4,0)
        vx+=vw+16
    }
    if(mouse_check_button_released(mb_right))
    {
        instance_destroy();
    }
    
    
    if(page==0)//机体能力部分
    {
        //机体动画
        vx=32
        vy=96
        vw=384
        vh=384
        blv=0.6
		draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
	    draw_set_colour(0)
	    draw_set_alpha(0.5)
	    draw_rectangle(vx,vy,vx+vw,vy+vh,false)
		draw_set_alpha(1)
		var lsnum=0
		if(sprite_exists(global.robo_spr_spine[rid]))
		{
			draw_skeleton(global.robo_spr_spine[rid],"stand","default",spr_ala,vx+vw/2,vy+vh/2,blv,blv,0,c_white,1)
			sprite_index=global.robo_spr_spine[rid]
			lsnum=skeleton_animation_get_frames("stand")
		}
		else
		{
	        blv*=768/sprite_get_width(global.robo_spr_stand[rid])
	        draw_sprite_ext(global.robo_spr_stand[rid],spr_ala,vx+vw/2,vy+vh/2,blv,blv,0,c_white,1)
			lsnum=sprite_get_number(global.robo_spr_stand[rid])
		}
        spr_ala+=0.5
        if(spr_ala>=lsnum)spr_ala-=lsnum
        //显示buff
		qtext=""
		var bid;
		for(k=0;k<40;k++)
		{
			if(global.mrobo_buff[mrid,k]>=0)
			{
				bid=global.mrobo_buff[mrid,k]
				if(global.buff_debuff[bid])qtext+="[\\c:255]"
				else qtext+="[\\c:16777215]"
				qtext+=global.buff_name[bid]+" "
			}
		}
		draw_text_dhk_colour(qtext,vx,vy,0)
        //修理费    
        vx=32
        vy=512
        vw=384
        vh=64
        draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
        qtext="[\\xys:125]修理费："
        qtext+=string(global.robo_value[rid])
        draw_text_dhk_colour(qtext,vx+4,vy+8,0)
        
        //返回按钮
        vx=32
        vy=608
        vw=384
        vh=80
        colora=make_colour_rgb(0,128,128)
        if(cold)colora=c_gray;
        if(point_in(vx,vy,vx+vw,vy+vh,mx,my)&&cold==false)
        {
            colora=make_colour_rgb(0,192,192)
            if(mouse_check_button(mb_left))
            {
                colora=make_colour_rgb(255,192,192)
            }
            if(mouse_check_button_released(mb_left))
            {
                instance_destroy()
            }
        }
        draw_kuang(vx,vy,vx+vw,vy+vh,colora);
        qtext="[\\xys:150]返回场景"
        draw_text_dhk_colour(qtext,vx+4,vy+8,0)
        
        //.en
        vx=448
        vy=96
        vw=800
        vh=96
        draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
        qtext="HP "
        qtext+=string(global.mrobo_hp[mrid])+" / "+string(global.mrobo_hpm[mrid])
        draw_text_dhk_colour(qtext,vx+4,vy+8,0)
        vy+=48
        qtext="EN "
        if(global.robo_magic[rid])qtext="MP "
        qtext+=string(global.mrobo_en[mrid])+" / "+string(global.mrobo_enm[mrid])
        draw_text_dhk_colour(qtext,vx+4,vy+8,0)
        
        //其他数值
        vx=448
        vy=208
        vw=400
        vh=272
        draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
        qtext="移动力 "
        qtext+=string(global.robo_mov[rid])
        draw_text_dhk_colour(qtext,vx+4,vy+8,0)
        vy+=48
        qtext="机动性 "
        qtext+=string(global.mrobo_ac[mrid])
        draw_text_dhk_colour(qtext,vx+4,vy+8,0)
        vy+=48
        qtext="照准度 "
        qtext+=string(global.mrobo_ab[mrid])
        draw_text_dhk_colour(qtext,vx+4,vy+8,0)
        vy+=48
        qtext="装甲值 "
        qtext+=string(global.mrobo_def[mrid])
        draw_text_dhk_colour(qtext,vx+4,vy+8,0)
        vy+=48
        qtext="特殊奖励"
        draw_text_dhk_colour(qtext,vx+4,vy+8,0)
        
        //特殊能力部分
        vx=880
        vy=208
        vw=368
        vh=272
        draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
        qtext="特殊能力： "
        draw_text_dhk_colour(qtext,vx+4,vy+8,0)
        vy+=48
        special_choose=-1
        for(i=0;i<7;i++)
        {
            sid=global.mrobo_special[mrid,i]
            if(sid>=0)
            {
                if(point_in(vx,vy,vx+vw,vy+32,mx,my)&&cold==false)
                {
                    special_choose=sid
                    draw_rectangle_colour(vx,vy,vx+vw,vy+32,c_white,c_white,c_white,c_white,true)
                }
                qtext=global.special_name[sid]
                draw_text_dhk_colour("[\\xys:75]"+qtext,vx+4,vy,0)
                vy+=32
            }
        }
        
        //移动适应性部分
        vx=448
        vy=512
        vw=384
        vh=176
        draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
        qtext="适应：[\\xys:75] "
        for(j=0;j<4;j++)
        {
            if(j==0)qtext+="空"
            else if(j==1)qtext+="陆"
            else if(j==2)qtext+="水"
            else if(j==3)qtext+="宇"
            if(global.robo_place[rid,j]==0)qtext+="-"
            else if(global.robo_place[rid,j]==1)qtext+="C"
            else if(global.robo_place[rid,j]==2)qtext+="B"
            else if(global.robo_place[rid,j]==4)qtext+="S"
            else qtext+="A"
            qtext+=" "
        }
        draw_text_dhk_colour(qtext,vx+4,vy+8,0)
        vy+=48
        qtext="移动: [\\xys:75]"
        for(j=0;j<4;j++)
        {            
            if(global.robo_place[rid,j]>2&&global.robo_place_go[rid,j])
            {
                qtext+="【"
                if(j==0)qtext+="空"
                else if(j==1)qtext+="陆"
                else if(j==2)qtext+="水"
                else if(j==3)qtext+="宇"
                qtext+="】"
            }
        }
        draw_text_dhk_colour(qtext,vx+4,vy+8,0)
        vy+=48
        qtext="体型 "
        if(global.robo_tx[rid]==0)qtext+="M"
        else if(global.robo_tx[rid]<0)
        {
            for(i=0;i>global.robo_tx[rid];i--)
            {
                qtext+="S"
            }
        }
        else
        {
            for(i=0;i<global.robo_tx[rid];i++)
            {
                qtext+="L"
            }
        }
        draw_text_dhk_colour(qtext,vx+4,vy+8,0)
        
        vx+=vw+32
        vy=512
        draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
        vh=32
        equip_choose=-1
        for(j=0;j<4;j++)
        {
            qtext="[\\c:16777215][\\xys:80]"
            if(global.mrobo_equip[mrid,j]>=0)
            {
                eid=global.mrobo_equip[mrid,j]
                qtext+=global.equip_name[eid]
                if(point_in(vx,vy,vx+vw,vy+vh,mx,my)&&cold==false)
                {
                    equip_choose=eid
                    draw_rectangle_colour(vx,vy,vx+vw,vy+32,c_white,c_white,c_white,c_white,true)
                }
            }
            else qtext+="---------"
            draw_text_dhk_colour(qtext,vx+4,vy+4,0)
            vy+=32
        }
        //显示芯片详述
        if(equip_choose>=0)
        {
            vx=mx+32
            vy=my
            vw=384
            vh=256
            if(vx+vw>=1280)vx-=vw+64
            if(vy+vh>=720)vy-=vh
            draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
            qtext="[\\lxys:75]"+global.equip_text[equip_choose]
            draw_text_dhk_colour(qtext,vx+4,vy+8,360)
        }
        //显示特技详述
        if(special_choose>=0)
        {
            vx=mx-384-32
            vy=my
            vw=384
            vh=256
            draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
            qtext="[\\xys:75]"+global.special_text[special_choose]
            draw_text_dhk_colour(qtext,vx+4,vy+8,360)
        }
        
    }
    if(page==1)//机师能力部分
    {
        if(p_page==-1)lspid=pid
        else
		{
            lspid=global.mrobo_sub_pliot[mrid,p_page]
		}
        vx=32
        vy=96
        vw=192
        vh=224
        draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
        if(lspid>=0)qspr=global.pliot_head[lspid]
		else
		{
			show_message(lspid)
		}
        if(p_page==-1)
		{
			qspr=global.mrobo_pliot_c_head[mrid]
		}
        draw_sprite(qspr,0,vx,vy+16)
        
        vx+=vw
        vw=32
        colora=make_colour_rgb(0,128,128)
        var subflag=false;
        for(i=0;i<10;i++)
        {
            if(global.robo_sub_pliot[rid,i]!=-1)
            {
                subflag=true
                break
            }
        }
        if(!subflag)colora=c_gray
        if(point_in(vx,vy,vx+vw,vy+vh,mx,my)&&cold==false&&colora!=c_gray)
        {
            colora=make_colour_rgb(0,192,192)
            if(mouse_check_button(mb_left))
            {
                colora=make_colour_rgb(255,192,192)
            }
            if(mouse_check_button_released(mb_left))
            {
                var subflag=false;
                for(i=p_page+1;i<10;i++)
                {
                    if(global.robo_sub_pliot[rid,i]!=-1)
                    {
                        p_page=i
                        subflag=true
                        break
                    }
                }
                if(!subflag)p_page=-1
            }
        }
        draw_kuang(vx,vy,vx+vw,vy+vh,colora);
        qtext=">"
        draw_set_font(global.font_m)
        draw_set_halign(fa_center)
        draw_set_valign(fa_middle)
        draw_set_color(0)
        draw_text(vx+vw/2,vy+vh/2+2,string_hash_to_newline(qtext))
        draw_set_color(16777215)
        draw_text(vx+vw/2,vy+vh/2,string_hash_to_newline(qtext))
        if(p_page==-1)lspid=pid
        else
            lspid=global.robo_sub_pliot[rid,p_page]
            
        vx=288
        vy=96
        vw=320
        vh=48
        draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
        qtext=global.pliot_name[lspid]
        if(p_page==-1)qtext=global.mrobo_pliot_c_name[mrid]
        //qtext+="("+global.pliot_fullname[lspid]+")"
        draw_text_dhk_colour(qtext,vx+4,vy+4,0)
        
        vx=640
        vy=96
        vw=608
        vh=48
        draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
        qtext=global.pliot_class[lspid]
        qtext+=" Lv"
        qtext+=string(global.pliot_lv[lspid])+" || "
		if(floor(global.pliot_faction[lspid] / 10 )==0)
		{
			qtext+="守序"
		}
		else if(floor(global.pliot_faction[lspid] / 10 )==1)
		{
			if(global.pliot_faction[lspid] ==11)qtext+="绝对"
			else qtext+="中立"
		}
		else if(floor(global.pliot_faction[lspid] / 10 )==2)
		{
			qtext+="混乱"
		}
		
		if(global.pliot_faction[lspid] mod 10 ==0)
		{
			qtext+="善良"
		}
		else if(global.pliot_faction[lspid] mod 10 ==1)
		{
			qtext+="中立"
		}
		else if(global.pliot_faction[lspid] mod 10 =2)
		{
			qtext+="邪恶"
		}
		
        draw_text_dhk_colour(qtext,vx+4,vy+4,0)
        
        vx=288
        vy=160
        vw=320
        vh=160
        draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
        qtext="格斗 "
        qtext+=string(global.pliot_combat[lspid])
        draw_text_dhk_colour(qtext,vx+4,vy+4,0)
        vy+=40
        qtext="射击 "
        qtext+=string(global.pliot_shoot[lspid])
        draw_text_dhk_colour(qtext,vx+4,vy+4,0)
        vy+=40
        qtext="防御 "
        qtext+=string(global.pliot_defence[lspid])
        draw_text_dhk_colour(qtext,vx+4,vy+4,0)
        
        vx=640
        vy=160
        vw=320
        vh=160
        draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
        qtext="命中 "
        qtext+=string(global.pliot_aim[lspid])
        draw_text_dhk_colour(qtext,vx+4,vy+4,0)
        vy+=40
        qtext="回避 "
        qtext+=string(global.pliot_dodge[lspid])
        draw_text_dhk_colour(qtext,vx+4,vy+4,0)
        vy+=40
        qtext="技量 "
        qtext+=string(global.pliot_skill[lspid])
        draw_text_dhk_colour(qtext,vx+4,vy+4,0)
        
        vx=992
        vy=160
        vw=256
        vh=160
        draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
        qtext="击坠数 "
        qtext+=string(global.pliot_kill[lspid])
        draw_text_dhk_colour(qtext,vx+4,vy+4,0)
        vy+=40
        qtext="Next "
        qtext+=string(500-global.pliot_exp[lspid])
        draw_text_dhk_colour(qtext,vx+4,vy+4,0)
        vy+=40
        qtext="还不是王牌机师 "
        if(global.pliot_kill[lspid]>=60)qtext="[\\c:65535]王牌！"
        if(global.pliot_kill[lspid]>=80)qtext="[\\c:65535]伟大王牌！"
        draw_text_dhk_colour(qtext,vx+4,vy+4,0)
        
        vx=32
        vy=336
        vw=576
        vh=240
        draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
        qtext="SP： "
        ah=global.mrobo_pliot_sp[mrid]
        if(p_page>=0)ah=global.mrobo_sub_sp[mrid,p_page]
        qtext+=string(ah)+" / "+string(global.pliot_sp[lspid])
        draw_text_dhk_colour(qtext,vx+4,vy+4,0)
        vy+=40
        for(i=0;i<6;i++)
        {
            var sid=global.pliot_spirit[lspid,i];
            if(global.pliot_kill[lspid]>=60&&global.pliot_spirit_ace[lspid,i]>=0)sid=global.pliot_spirit_ace[lspid,i]
            if(sid<0)continue;
            else
            {
				/*show_message("lspid="+string(lspid)+"\n i="+string(i))
				show_message("pliot_lv="+string(global.pliot_lv[lspid]))
				show_message("spirit_lv="+string(global.pliot_spirit_lv[i]))*/
                if(global.pliot_lv[lspid]<global.pliot_spirit_lv[lspid,i])qtext="---------------"
                else
                    qtext="【"+string(global.spirit_name[sid])+"】 "+string(global.spirit_sp[sid])
                draw_text_dhk_colour(qtext,vx+4,vy+4,0)
                if(i mod 2==0)vx+=288
                else
                {
                    vx-=288
                    vy+=40
                }
            }
        }
        
        vx=640
        vy=336
        vw=608
        vh=368
        draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
        qtext="特殊能力： "
        draw_text_dhk_colour(qtext,vx+4,vy+4,0)
        vy+=40
        perk_choose=-1
        for(i=0;i<8;i++)
        {
            var prid=global.pliot_perk[lspid,i];
            qtext="[\\lxys:80][\\c:16777215]"
            if(prid>=0)
            {
                if(global.pliot_perk_lv[lspid,i]<=0)qtext+="？？？？"
                else 
                {
                    qtext+=global.perk_name[prid]+" Lv."+string(global.pliot_perk_lv[lspid,i])   
                    if(point_in(vx,vy,vx+vw,vy+32,mx,my)&&cold==false)
                    {
                        perk_choose=prid
                        draw_rectangle_colour(vx,vy,vx+vw,vy+32,c_white,c_white,c_white,c_white,true)
                    }
                }
            }
            else qtext+="[\\c:8421504]————————"
            
            draw_text_dhk_colour(qtext,vx+4,vy+4,0)
            vy+=32
        }
        //显示特技详述
        if(perk_choose>=0)
        {
            vx=mx+32
            vy=my
            vw=384
            vh=256
            if(vx+vw>=1280)vx-=vw+64
            if(vy+vh>=720)vy-=vh
            draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
            qtext="[\\xys:75]"+global.perk_text[perk_choose]
            draw_text_dhk_colour(qtext,vx+4,vy+8,360)
        }
        //返回按钮
        vx=32
        vy=608
        vw=384
        vh=80
        colora=make_colour_rgb(0,128,128)
        if(cold)colora=c_gray;
        if(point_in(vx,vy,vx+vw,vy+vh,mx,my)&&cold==false)
        {
            colora=make_colour_rgb(0,192,192)
            if(mouse_check_button(mb_left))
            {
                colora=make_colour_rgb(255,192,192)
            }
            if(mouse_check_button_released(mb_left))
            {
                instance_destroy()
            }
        }
        draw_kuang(vx,vy,vx+vw,vy+vh,colora);
        qtext="[\\xys:150]返回场景"
        draw_text_dhk_colour(qtext,vx+4,vy+8,0)
    }
    if(page==2)//武器能力部分
    {
        vx=32
        vy=112
        vw=1216
        vh=48
        draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
        qtext="武器名称"
        draw_text_dhk_colour(qtext,vx+4,vy+4,0)
        vx+=480
        qtext="威力"
        draw_text_dhk_colour(qtext,vx+4,vy+4,0)
        vx+=256
        qtext="射程"
        draw_text_dhk_colour(qtext,vx+4,vy+4,0)
        vx+=128
        qtext="命中"
        draw_text_dhk_colour(qtext,vx+4,vy+4,0)
        
        vx=32
        vy=176
        vw=1216
        vh=336
        flag=false
        colora=make_colour_rgb(0,128,128)
        draw_kuang(vx,vy,vx+vw,vy+vh,colora);
        for(i=0;i<8;i++)
        {
            if(!global.mrobo_wep_enabled[mrid,i])continue;//屏蔽禁止使用的武器
            wid=global.mrobo_wep[mrid,i]
            if(wid<0)continue;
            else if(mode==2&&global.wep_map[wid])continue;//不能使用地图炮反击
            else
            {
                if(global.wep_combat[wid])qtext="[\\c:65535]【格】[\\c:16777215]"
                else qtext="[\\c:65535]【射】[\\c:16777215]"
                if(wep_can_use[i]==false&&mode!=0)qtext+="[\\c:255]"
                qtext+=global.wep_name[wid]
                
                if(global.wep_beam[wid])qtext+="[\\c:65280][\\xs:50]【光】[\\xs:100][\\c:16777215]"
                if(global.wep_map[wid])qtext+="[\\c:65535][\\xs:50]【Ｍ】[\\xs:100][\\c:16777215]"
                if(global.wep_move[wid])qtext+="[\\c:16776960][\\xs:50]【移】[\\xs:100][\\c:16777215]"
                
                draw_text_dhk_colour(qtext,vx+4,vy+4,0)
                vx+=480
                if(wep_can_use[i]==false&&mode!=0)qtext="[\\c:255]"
                else qtext="[\\c:16777215]"
                qtext+=string(floor(global.wep_atk[wid]+global.mrobo_wep_kai[mrid]*150))
                draw_text_dhk_colour(qtext,vx+4,vy+4,0)
                vx+=256
                if(wep_can_use[i]==false&&mode!=0)qtext="[\\c:255]"
                else qtext="[\\c:16777215]"
                ls_long=wep_get_long(wid,mrid)
                if(global.wep_short[wid]==ls_long)
                    qtext+=string(global.wep_short[wid])
                else
                    qtext+=string(global.wep_short[wid])+"~"+string(ls_long)
                draw_text_dhk_colour(qtext,vx+4,vy+4,0)
                vx+=128
                if(global.wep_aim[wid]>=0)qtext="+"
                else qtext=""
                if(wep_can_use[i]==false&&mode!=0)qtext+="[\\c:255]"
                else qtext+="[\\c:16777215]"
                qtext+=string(global.wep_aim[wid])
                draw_text_dhk_colour(qtext,vx+4,vy+4,0)
                vx=32
                if(point_in(vx,vy,vx+vw,vy+40,mx,my)&&flag==false)
                {
                    draw_set_colour(16777215)
                    draw_set_alpha(0.5)
                    draw_rectangle(vx,vy,vx+vw,vy+40,false)
                    draw_rectangle(vx,vy,vx+vw,vy+40,true)
                    draw_set_alpha(1)
                    wchoose=i
                    if(wep_can_use[i]&&mouse_check_button_released(mb_left))
                    {
                        if(mode==1)
                        {
                            a=instance_create(0,0,attacking_drawer)
                            if(global.wep_map[wid])a.mapmode=1
                            a.mrid=mrid
                            a.stand=stand
                            a.rid=rid
                            a.wid=wid
                            instance_destroy()
                        }
                        else if(mode==2)
                        {
                            choosedwid=wid
                            //show_message("wid="+string(wid)+"#choosedwid="+string(choosedwid))
                            instance_destroy()
                        }
                    }
                    flag=true
                }
                vy+=40
                
            }
        }
        if(!flag)wchoose=-1
        
        vx=32
        vy=528
        vw=672
        vh=160
        draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
        if(wchoose>=0)
        {
            wid=global.mrobo_wep[mrid,wchoose]
            if(wid>=0)
            {   
                qtext="暴击补正： "
                if(global.wep_aim[wid]>=0)qtext+="+"
                qtext+=string(global.wep_ct[wid])
                draw_text_dhk_colour(qtext,vx+4,vy+4,0)
                if(global.wep_en[wid]>0)
                {
                    vy+=40
                    qtext="EN消耗： "
                    if(global.robo_magic[rid])qtext="MP消耗： "
                    if(global.wep_en[wid]>global.mrobo_en[mrid])qtext+="[\\c:255]"
                    qtext+=string(global.wep_en[wid])
                    draw_text_dhk_colour(qtext,vx+4,vy+4,0)
                }
                if(global.wep_bullet[wid]>0)
                {
                    vy+=40
                    qtext="弹数： "
                    if(global.mrobo_wep_bullet[mrid,wchoose]<=0)qtext+="[\\c:255]"
                    qtext+=string(global.mrobo_wep_bullet[mrid,wchoose])+" / "+string(global.wep_bullet[wid])
                    draw_text_dhk_colour(qtext,vx+4,vy+4,0)
                }
                if(global.wep_ql[wid]>0)
                {
                    vy+=40
                    qtext="气力需求： "
                    if(global.wep_ql[wid]>global.mrobo_pliot_ql[mrid])qtext+="[\\c:255]"
                    qtext+=string(global.wep_ql[wid])
                    draw_text_dhk_colour(qtext,vx+4,vy+4,0)
                }
				vy+=40
				qtext=""
				var k;
				for(k=0;k<10;k++)
				{
					if(global.wep_perk_ignore[wid,k]>=0)
					{
						if(qtext=="")
						{
							qtext+="技能需求： "
						}
						qtext+="【"+global.perk_name[global.wep_perk_ignore[wid,k]]+"】lv"+string(global.wep_perk_ignore_lv[wid,k])
						qtext+=" "
					}
				}
				draw_text_dhk_colour(qtext,vx+4,vy+4,0)
				
            }
        }
        
        
        vx=736
        vy=528
        vw=512
        vh=160
        draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
        if(wchoose>=0)
        {
            wid=global.mrobo_wep[mrid,wchoose]
            if(wid>=0)
            {
                qtext=""
                for(i=0;i<4;i++)
                {
                    if(i==0)qtext+="空："
                    else if(i==1)qtext+="陆："
                    else if(i==2)qtext+="水："
                    else if(i==3)qtext+="宇："
                    
                    if(global.wep_place[wid,i]==0)qtext+="-"
                    else if(global.wep_place[wid,i]==1)qtext+="C"
                    else if(global.wep_place[wid,i]==2)qtext+="B"
                    else if(global.wep_place[wid,i]==3)qtext+="A"
                    else if(global.wep_place[wid,i]==4)qtext+="S"
                    
                    qtext+=" "
                }
                draw_text_dhk_colour(qtext,vx+4,vy+4,0)
				vy+=32
				qtext=global.wep_text[wid]
				draw_text_dhk_colour(qtext,vx+4,vy+4,vw-32)
            }
        }
    }
}

