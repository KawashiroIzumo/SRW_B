/// @description view_do_center(vid,wx,wy)
/// @param vid
/// @param wx
/// @param wy
function view_do_center(argument0, argument1, argument2) {
	__view_set( e__VW.XView, argument0, argument1-__view_get( e__VW.WView, argument0 )/2 )
	__view_set( e__VW.YView, argument0, argument2-__view_get( e__VW.HView, argument0 )/2 )
	if(__view_get( e__VW.XView, argument0 )<0)__view_set( e__VW.XView, argument0, 0 )
	if(__view_get( e__VW.YView, argument0 )<0)__view_set( e__VW.YView, argument0, 0 )
	if(__view_get( e__VW.XView, argument0 )>room_width-__view_get( e__VW.WView, argument0 ))
	{
	    __view_set( e__VW.XView, argument0, room_width-__view_get( e__VW.WView, argument0 ) )
	}
	if(__view_get( e__VW.YView, argument0 )>room_height-__view_get( e__VW.HView, argument0 ))
	{
	    __view_set( e__VW.YView, argument0, room_height-__view_get( e__VW.HView, argument0 ) )
	}
	camera.x=__view_get( e__VW.XView, argument0 )+__view_get( e__VW.WView, argument0 )/2
	camera.y=__view_get( e__VW.YView, argument0 )+__view_get( e__VW.HView, argument0 )/2



}
