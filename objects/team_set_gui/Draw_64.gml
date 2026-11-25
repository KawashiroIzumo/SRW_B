/// @description 主体绘制
// You can write your code in this editor
var vx,vy,vw,vh,mx,my,qtext,i,mclick_ing=mouse_check_button(mb_left),mclick_ed=mouse_check_button_released(mb_left);
var flag_go=false;
mx=device_mouse_x_to_gui(0)
my=device_mouse_y_to_gui(0)
#region 绘制底纹
draw_sprite(gui_team_set_bak,0,0,0)
#endregion
#region 绘制参战上限
vx=350
vy=80
draw_set_font(global.font_m)
draw_set_halign(fa_right)
draw_set_valign(fa_middle)
qtext=string(robo_go_now)+" / "+string(robo_go_max)
draw_text_border_transformed(vx,vy,qtext,1,1,0,c_white,c_black)
#endregion
#region 出击按钮
vx=600
vy=88
vw=178
vh=82
draw_sprite(gui_team_set_go_button,0,vx,vy)
if(cold==false&&point_in_rectangle(mx,my,vx,vy,vx+vw,vy+vh))
{
	gpu_set_blendmode(bm_add)
	draw_sprite(gui_team_set_go_button,0,vx,vy)
	gpu_set_blendmode(bm_normal)
	if(mclick_ed)
	{
		flag_go=true
	}
}
#endregion
#region 绘制机体头像
p_index=-1
var p_vx=0,p_vy=0;
var robonum=20;//一页显示多少个头像
var hmax=5;//一行多少个头像
vx=128
vy=160
vw=72
vh=72
for(i=0;i<20;i++)
{
	var rlid=i+20*p_page
	if(rlid>=robolist_max)break
	else
	{
		if(robolist_position[rlid]>=0)shader_set(shd00_heibai)
		draw_sprite(gui_team_set_kuang,0,vx,vy)
		if(point_in_rectangle(mx,my,vx-vw/2,vy-vh/2,vx+vw/2,vy+vh/2))
		{
			p_index=i
			p_vx=vx+vw/2
			p_vy=vy
		}
		if(cold==false&&p_index==i)//选中效果
		{
			gpu_set_blendmode(bm_add)
			draw_sprite(gui_team_set_kuang,0,vx,vy)
			gpu_set_blendmode(bm_normal)
			if(mclick_ed)
			{
				if(robolist_position[rlid]<0)
				{
					robo_go_add_single(rlid)
				}
				else
				{
					robo_go_delete_single(rlid)
				}
			}
		}
		var rid=global.base_rid[robolist_bid[rlid]]
		if(rid>=0)
		{
			draw_sprite_ext(global.robo_icon[rid],0,vx,vy,1,1,0,c_white,1)
		}
		if(robolist_position[rlid]>=0)
		{
			draw_text_dhk_colour(string(robolist_position[rlid]+1),vx-vw/2+8,vy-vh/2+8,0)
		}
		shader_reset()
		vx+=vw+24
		if(i mod hmax==hmax-1)
		{
			vx=128
			vy+=vh+56
		}
	}
}
#endregion
#region 显示页码
var pmax=ceil(robolist_max/robonum)
vx=320
vy=656
vw=32
vx-=(pmax-1)*vw/2
for(i=0;i<pmax;i++)
{
	draw_sprite(gui_team_set_page,(p_page==i),vx,vy)
	if(cold==false&&point_in_circle(mx,my,vx,vy,vw/2))
	{
		draw_sprite_ext(gui_team_set_page,(p_page==i),vx,vy,1,1,0,c_yellow,1)
		if(mclick_ed)
		{
			p_page=i
		}
	}
	vx+=vw
}
#endregion
#region 显示机体信息
if(p_index>=0)
{
	var rlid=p_index+20*p_page;
	var bid=robolist_bid[rlid];//机体在格纳库中的编号
	var rid=global.base_rid[bid];//机体编号
	var pid=global.base_pliot[bid];//机师编号
	vx=p_vx
	vy=p_vy
	draw_sprite(gui_team_set_description,0,vx,vy)
	vx+=56
	vy-=40
	qtext="[\\lxys:65]机体："+global.robo_name[rid]
	qtext+="#机师："+global.pliot_name[pid]
	draw_text_dhk_colour(qtext,vx,vy,300)
}
#endregion
#region 杂项数据处理
if(flag_go)
{
	instance_destroy()
}
#endregion