if(ondraw)
{
    if(targetb<0)instance_destroy()
    else if(global.base_rid[targetb]<0)instance_destroy()
    else
    {
        var vx,vy,vw,vh,mx,my,i,j,k,l;
        var rid=global.base_rid[targetb],hrid=-1;
        hz_choose=-1
        mx=window_mouse_get_x()
        my=window_mouse_get_y()
        draw_set_alpha(1)
        draw_rectangle_colour(0,0,1280,720,0,0,192,0,0)
        vx=52
        vy=312
        vw=588
        vh=368
        colora=make_colour_rgb(0,0,255)
        draw_kuang(vx,vy,vx+vw,vy+vh,colora)
        vh=36
        vw=588
        for(i=0;i<8;i++)
        {
            if(global.robo_hz[rid,i]>=0)
            {
                hrid=global.robo_hz[rid,i]
                qtext="[\\lxys:80]"+global.robo_name[hrid]
                if(point_in(vx,vy,vx+vw,vy+vh,mx,my)&&cold==false)
                {
                    hz_choose=hrid
                    draw_rectangle_colour(vx,vy,vx+vw,vy+32,c_white,c_white,c_white,c_white,true)
                    if(mouse_check_button(mb_left))
                    {
                        draw_rectangle_colour(vx,vy,vx+vw,vy+32,c_navy,c_aqua,c_navy,c_navy,0)
                    }
                    if(mouse_check_button_released(mb_left))
                    {
                        audio_play_sound(sound146_transforming,1,0)
                        base_robo_change(targetb,hrid)
                        hz_choose=-1
                    }
                }
                draw_text_dhk_colour(qtext,vx+8,vy+4,vw-40)
                vy+=vh
            }
            
        }
        vx=640
        vy=312
        vw=588
        vh=368
        draw_kuang(vx,vy,vx+vw,vy+vh,colora)
        qtext="[\\lxys:80]"
        if(hz_choose>=0)
        {
            qtext+="（以下属性不计入改造和强化芯片的数值）#"
            qtext+="[\\c:16777215]HP "
            if(global.robo_hp[hz_choose]>global.robo_hp[rid])qtext+="[\\c:65280]"
            else if(global.robo_hp[hz_choose]<global.robo_hp[rid])qtext+="[\\c:255]"
            qtext+=string(global.robo_hp[hz_choose])+"#"
            qtext+="[\\c:16777215]"
            if(global.robo_magic[hz_choose])qtext+="MP "
            else qtext+="EN "
            if(global.robo_en[hz_choose]>global.robo_en[rid])qtext+="[\\c:65280]"
            else if(global.robo_en[hz_choose]<global.robo_en[rid])qtext+="[\\c:255]"
            qtext+=string(global.robo_en[hz_choose])+"#"
            qtext+="[\\c:16777215]运动性 "
            if(global.robo_ac[hz_choose]>global.robo_ac[rid])qtext+="[\\c:65280]"
            else if(global.robo_ac[hz_choose]<global.robo_ac[rid])qtext+="[\\c:255]"
            qtext+=string(global.robo_ac[hz_choose])+"#"
            qtext+="[\\c:16777215]照准值 "
            if(global.robo_ab[hz_choose]>global.robo_ab[rid])qtext+="[\\c:65280]"
            else if(global.robo_ab[hz_choose]<global.robo_ab[rid])qtext+="[\\c:255]"
            qtext+=string(global.robo_ab[hz_choose])+"#"
            qtext+="[\\c:16777215]装甲 "
            if(global.robo_def[hz_choose]>global.robo_def[rid])qtext+="[\\c:65280]"
            else if(global.robo_def[hz_choose]<global.robo_def[rid])qtext+="[\\c:255]"
            qtext+=string(global.robo_def[hz_choose])+"#"
            qtext+="[\\c:16777215]移动方式 #"
                if(global.robo_place[hz_choose,0]>=2&&global.robo_place_go[hz_choose,0])qtext+="【空】"
                if(global.robo_place[hz_choose,1]>=2&&global.robo_place_go[hz_choose,1])qtext+="【陆】"
                if(global.robo_place[hz_choose,2]>=2&&global.robo_place_go[hz_choose,2])qtext+="【水】"
                if(global.robo_place[hz_choose,3]>=2&&global.robo_place_go[hz_choose,3])qtext+="【宇】"
            qtext+="#"
        }
        draw_text_dhk_colour(qtext,vx+8,vy+8,vw-40)
        vx=52
        vy=40
        vw=588
        vh=256
        colora=make_colour_rgb(0,0,128)
        draw_kuang(vx,vy,vx+vw,vy+vh,colora)
        draw_sprite_ext(global.robo_spr_stand[rid],jt_image,vx+vw/2,vy+vh/2,0.25,0.25,0,16777215,1)
        draw_text_dhk_colour(global.robo_name[rid],vx+8,vy+8,0)
        jt_image=(jt_image mod sprite_get_number(global.robo_spr_stand[rid]))+1
        
        vw=588
        vx=640
        colora=make_colour_rgb(0,0,192)
        draw_kuang(vx,vy,vx+vw,vy+vh,colora)
        if(hz_choose>=0)
        {
            draw_sprite_ext(global.robo_spr_stand[hz_choose],jt_image,vx+vw/2,vy+vh/2,0.25,0.25,0,16777215,1)
            draw_text_dhk_colour(global.robo_name[hz_choose],vx+8,vy+8,0)
        }
        
        
             
    }
    if(!cold&&mouse_check_button_released(mb_right))
    {
        instance_destroy()
    }
}

