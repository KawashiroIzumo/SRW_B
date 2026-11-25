/// @description view_do_center_puz(vid,wx,wy) 
/// @param vid
/// @param wx
/// @param wy
function view_do_center_puz(argument0, argument1, argument2) {
	//使画面正对棋盘中的点
	var lsx,lsy;
	lsx=64+argument1*64
	lsy=64+argument2*64
	view_do_center(argument0,lsx,lsy)



}
