if(surface_exists(scene_surface))
{
    surface_set_target(scene_surface)
    if(eff==1)shader_set(shd10_s_heibai)//若特效代码为1则改为黑白绘制
	draw_clear_alpha(c_black,0)//清除缓冲区中原本的画面
    if(background_exists(scene_bak))//当存在背景图片时绘制背景图片
    {
        var vw=background_get_width(scene_bak);
        draw_background(scene_bak,scene_vx-vw,0)//因为背景图片左右链接，所以只需要绘制三次
        draw_background(scene_bak,scene_vx,0)
        draw_background(scene_bak,scene_vx+vw,0)
        scene_vx+=scene_mov//移动背景图片
        if(scene_vx<0)scene_vx+=vw
        if(scene_vx>vw)scene_vx-=vw
    }
    var i,j,k,m,n;
    for(i=0;i<100;i++)
    {
        if(actor_enable[i]&&actor_sprite[i]!=noone)//对每一个小木偶进行绘制
        {
            j=1
            if(actor_mirror[i])j=-1
            k=c_white
            if(!actor_active[i])k=c_gray
            if(!actor_loop_x[i])
                draw_sprite_ext(actor_sprite[i],actor_image_index[i],actor_x[i],actor_y[i],j*actor_xs[i],actor_ys[i],actor_rotate[i],k,actor_alpha[i])
            else
            {
                draw_sprite_tiled_ext(actor_sprite[i],actor_image_index[i],(actor_x[i] mod 1280)-1280,actor_y[i],j*actor_xs[i],actor_ys[i],k,actor_alpha[i])
            }                
            actor_xs[i]+=actor_grow[i]
            actor_ys[i]+=actor_grow[i]
            actor_rotate[i]+=actor_rotate_speed[i]
            if(actor_rotate[i]>360)actor_rotate[i]-=360
            else if(actor_rotate[i]<0)actor_rotate[i]+=360
        
            actor_x[i]+=dcos(actor_direction[i])*actor_speed[i]
            actor_y[i]-=dsin(actor_direction[i])*actor_speed[i]
            actor_alpha[i]-=actor_disappear[i]
            if(actor_alpha[i]<0)actor_alpha[i]=0
            if(actor_alpha[i]>1)actor_alpha[i]=1
            
            if(actor_play[i])actor_image_index[i]+=actor_image_speed[i]
            if(actor_image_index[i]>=sprite_get_number(actor_sprite[i]))
            {
                actor_image_index[i]=0
                if(actor_combo[i]!=noone)
                {
                    actor_combo_nj[i]--
                    if(actor_combo_nj[i]<0)
                    {
                        actor_sprite[i]=actor_combo[i]
                        actor_combo[i]=noone
                    }
                }
            }
        }
    }
    shader_reset()
    surface_reset_target()
}
else
{
    scene_surface=surface_create(1280,720)
}
//快进
if(keyboard_check(vk_space))
{
	room_speed=120
	with(DHK)
	{
		if(flag_menu=false&&cold==false&&object_index!=team_set_gui)instance_destroy()
	}
}
else room_speed=60
