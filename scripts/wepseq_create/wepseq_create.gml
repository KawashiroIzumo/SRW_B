// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wepseq_create(lid,seqid)
{
	var a,vx,vy,vc;
	vc=view_get_camera(0)
	vx=camera_get_view_x(vc)+camera_get_view_width(vc)/2
	vy=camera_get_view_y(vc)+camera_get_view_height(vc)/2
	return layer_sequence_create(lid,vx,vy,seqid)
}