var fflag=true;
if(instance_exists(empty_obj))
{
	if(!instance_exists(fw_drawer))fflag=false
	if(instance_exists(team_set_gui))fflag=true
}
if(!follow)fflag=false
if(fflag)
{
	var mflag=false,col=64,vw=display_get_gui_width(),vh=display_get_gui_height();
	var mx=device_mouse_x_to_gui(0),my=device_mouse_y_to_gui(0);//获取鼠标在gui上的坐标
	var cspeed=8;//定义卷动速度
	if(mx<col||keyboard_check(ord("A")))
	{
		if(x>vw/2+cspeed)x-=cspeed
	}
	if(my<col||keyboard_check(ord("W")))
	{
		if(y>vh/2+cspeed)y-=cspeed
	}
	
	if(mx>vw-col||keyboard_check(ord("D")))
	{
		if(x<room_width-(vw/2+cspeed))x+=cspeed
	}
	if(my>vh-col||keyboard_check(ord("S")))
	{
		if(y<room_height-(vh/2+cspeed))y+=cspeed
	}
	var vc=view_get_camera(0)
	camera_set_view_pos(vc,x-vw/2,y-vh/2)
}

