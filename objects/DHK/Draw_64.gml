if(ondraw)
then begin
    if(eff<2)
    {
        if(alarm[0]>0)draw_set_alpha(1-alarm[0]/10)
        else if(alarm[1]>0)draw_set_alpha(alarm[1]/15)
        else draw_set_alpha(1)
        draw_set_colour(c_white)
        draw_background(gui_DHK_bk,0,0)
        draw_sprite(qhead,0,16,462)
        if(eff==1)
        {
            var a=draw_get_alpha();
            draw_set_alpha(a*0.5)
            draw_set_colour(c_green)
            draw_rectangle(16,462,16+192,462+192,0)
            draw_set_alpha(a)
            eff_alarm+=6
            if(eff_alarm>=192)eff_alarm=0
            draw_set_colour(c_lime)
            draw_rectangle(16,462+eff_alarm-2,16+192,462+eff_alarm+2,0)
        }
        draw_text_dhk_colour(qtext,224+8,544+8,1000)
        vx=14
        vy=656
        vw=196
        vh=54

        draw_set_halign(fa_center)
        draw_set_valign(fa_middle)
        draw_set_font(global.font_m)
        w=string_width(string_hash_to_newline(qname))
        xs=1
        if(w>=180)xs=180/w
        draw_set_colour(c_dkgray)
        draw_text_transformed(112,690,string_hash_to_newline(qname),xs,1,0)
        draw_set_colour(c_white)
        draw_text_transformed(112,688,string_hash_to_newline(qname),xs,1,0)
    }
    else if(eff==2)
    {
        draw_background(gui_DHK_bkef2,0,0)
        draw_text_dhk_colour(qtext,128,256,1024)
    }
    if(cold==false)
    {
        if(mouse_check_button_released(mb_left)||keyboard_check_released(vk_enter))
       {
            cold=true
            alarm[1]=15
        }
    }
    draw_set_alpha(1)
end

