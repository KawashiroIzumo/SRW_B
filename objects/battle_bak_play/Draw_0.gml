/// @description Insert description here
// You can write your code in this editor
var vc=view_get_camera(0),ax,ay;
ax=camera_get_view_x(vc)
ay=camera_get_view_y(vc)
with(battle_qr)
{
	if(ondrawing2&&battle_dh==true)
	{
		var vx,vy,vw,vh;
		vw=1280
		vh=720
		if(surface_exists(battleground))
		{
			//show_message("draw!")
			vx=battlecam_x-vw/2+vw*battlecam_blv/2
			vy=battlecam_y-vh/2+vh*battlecam_blv/2
			gpu_set_blendmode(bm_normal)
			draw_rectangle_color(ax,ay,ax+1280,ay+720,c_white,c_white,c_white,c_white,0)
			draw_surface_part_ext(battleground,vx,vy,vw/battlecam_blv,vh/battlecam_blv,ax,ay,battlecam_blv,battlecam_blv,c_white,1)

		}
	}
}