var vx,vy,mx,my,vw,vh,qtext;
mx=device_mouse_x_to_gui(0)
my=device_mouse_y_to_gui(0)
display_set_gui_size(1280,720)
draw_set_alpha(1)
draw_background(GUI_winlose_bk,0,0)
vx=64
vy=64
qtext="[\\xys:150]胜利条件：#[\\xys:100]"
qtext+=global.task_win;
draw_text_dhk_colour(qtext,vx,vy,1120)
vx=64
vy=400
qtext="[\\xys:150]失败条件：#[\\xys:100]"
qtext+=global.task_lose;
draw_text_dhk_colour(qtext,vx,vy,1120)
if(cold==false)
{
    if(mouse_check_button_released(mb_right)||keyboard_check_released(vk_space))
    {
        instance_destroy()
    }
}


