draw_set_colour(c_black)
draw_set_alpha(0.75)
draw_rectangle(0,0,1280,720,0)
draw_set_colour(c_white)
draw_set_alpha(1)
if(keyboard_check(vk_escape))
{
    esc_press_time+=1
    if(esc_press_time>70)esc_press_time=70
}
if(keyboard_check_released(vk_escape))
{
    if(esc_press_time>=60)
    {
        if(global.ls_variable[0]==0)
            room_goto(stage00A_OP)
        else
            room_goto(stage00B_OP)
    }
    else esc_press_time=0
}
if(esc_press_time>0)
{
    draw_set_alpha(1)
    draw_set_colour(c_ltgray)
    draw_line_width(0,0,360,0,10)
    draw_set_colour(c_white)
    if(esc_press_time>=60)draw_set_colour(c_yellow)
    draw_line_width(0,0,esc_press_time*6,0,10)
}
draw_set_colour(c_white)
draw_text_dhk_colour("长按ESC：跳过",16,16,0)


