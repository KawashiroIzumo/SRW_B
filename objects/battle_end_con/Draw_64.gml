var dx,dy,vx,vy,vw,vh,dka,ax,ay,bx,by,bw,bh,bflag;
rid=global.mrobo_id[mrid[0]]
rteam=global.mrobo_team[mrid[0]]
pid=global.mrobo_pliot[mrid[0]]
mx=window_mouse_get_x()
my=window_mouse_get_y()
if(drawing)
{
    //机体名称
    draw_set_colour(0)
    draw_set_alpha(0.3)
    draw_rectangle(0,0,1280,720,false)
    draw_set_alpha(1)
    if(rteam==1)colorb=c_red
    else colorb=c_blue
    vx=32
    vy=32
    vw=384
    vh=48
    draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
    qtext=global.robo_name[rid]
    draw_text_dhk_colour(qtext,vx+4,vy+4,0)
    
    //退出
    vx=448
    vy=32
    vw=256
    vh=48
    if(mouse_check_button_released(mb_right))
    {
        instance_destroy();
    }
    //主体
        vx=32
        vy=96
        vw=224
        vh=224
        draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
        draw_sprite(global.pliot_head[pid],0,vx+16,vy+16)
        
        vx=288
        vy=96
        vw=320
        vh=48
        draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
        qtext=global.mrobo_pliot_c_name[mrid[0]]
        draw_text_dhk_colour(qtext,vx+4,vy+4,0)
        
        vx=640
        vy=96
        vw=608
        vh=48
        draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
        qtext=global.pliot_class[pid]
        qtext+=" Lv"
        if(lvup)
        {
            qtext+=string(lv_prim)+" -> [\\c:d4]"
        }
        qtext+=string(global.pliot_lv[pid])
        draw_text_dhk_colour(qtext,vx+4,vy+4,0)
        
        vx=288
        vy=160
        if(flag_equip_get) vw=512
        else vw=928
        vh=192
        draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
        qtext="获得经验#[\\xys:120]"
        qtext+=string(exp_get)+"#[\\xys:100]"
        qtext+="获得金钱#[\\xys:120]"
        qtext+=string(money_get)+"[\\xys:80]#（总计"+string(global.money)+"）"
        draw_text_dhk_colour(qtext,vx+4,vy+4,580)
        
        if(flag_equip_get)
        {
            vx+=vw+32
            vw=384
            vy=160
            draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
            qtext="[\\lxys:80]获得强化芯片："
            draw_text_dhk_colour(qtext,vx+4,vy+4,0)
            vh=32
            vy+=32
            equip_choose=-1
            for(j=0;j<4;j++)
            {
                qtext="[\\c:16777215][\\xys:80]"
                if(equip_get[j]>=0)
                {
                    eid=equip_get[j]
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
        }
        
        
        if(lvup)
        {   
            draw_set_colour(c_white)
            vx=320
            vy=368
            vw=320
            vh=320
            draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
            qtext="格斗 [\\c:d4]"
            qtext+=string(global.pliot_combat[pid])
            draw_text_dhk_colour(qtext,vx+4,vy+4,0)
            vy+=40
            qtext="射击 [\\c:d4]"
            qtext+=string(global.pliot_shoot[pid])
            draw_text_dhk_colour(qtext,vx+4,vy+4,0)
            vy+=40
            qtext="防御 [\\c:d4]"
            qtext+=string(global.pliot_defence[pid])
            draw_text_dhk_colour(qtext,vx+4,vy+4,0)
            vy+=40
            qtext="命中 [\\c:d4]"
            qtext+=string(global.pliot_aim[pid])
            draw_text_dhk_colour(qtext,vx+4,vy+4,0)
            vy+=40
            qtext="回避 [\\c:d4]"
            qtext+=string(global.pliot_dodge[pid])
            draw_text_dhk_colour(qtext,vx+4,vy+4,0)
            vy+=40
            qtext="技量 [\\c:d4]"
            qtext+=string(global.pliot_skill[pid])
            draw_text_dhk_colour(qtext,vx+4,vy+4,0)
            
            vx=672
            vy=368
            vw=320
            vh=320
            draw_kuang(vx,vy,vx+vw,vy+vh,colorb);
            draw_set_colour(c_white)
            qtext="SP： [\\c:d4]"
            qtext+=string(global.mrobo_pliot_sp[mrid[0]])+" / "+string(global.pliot_sp[pid])
            draw_text_dhk_colour(qtext,vx+4,vy+4,0)
            vy+=40
            for(i=0;i<6;i++)
            {
                var sid=global.pliot_spirit[pid,i];
                if(global.pliot_kill[pid]>=60&&global.pliot_spirit_ace[pid,i]>=0)sid=global.pliot_spirit_ace[pid,i]
                if(sid<0)continue;
                else
                {
                    if(global.pliot_lv[pid]<global.pliot_spirit_lv[pid,i])qtext="---------------"
                    else
                        qtext="【"+string(global.spirit_name[sid])+"】 "+string(global.spirit_sp[sid])
                    draw_text_dhk_colour(qtext,vx+4,vy+4,0)
                    vy+=40
                }
            }
        }
        
        
        //返回按钮
        vx=32
        vy=608
        vw=208
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

