/// @description mouse_in(left,top,right,bottom)
/// @param left
/// @param top
/// @param right
/// @param bottom
function mouse_in(argument0, argument1, argument2, argument3) {
	if(mouse_x<argument0)return false
	if(mouse_x>argument2)return false
	if(mouse_y<argument1)return false
	if(mouse_y>argument3)return false
	return true



}
