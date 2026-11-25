/// @description Insert description here
// You can write your code in this editor
var vx,vy,wx,wy;
var vc=view_get_camera(0),ax,ay;
ax=camera_get_view_x(vc)
ay=camera_get_view_y(vc)
x=a_x+ax
y=a_y+ay
if(sprite_exists(sprite_index))
{
	draw_self()
}