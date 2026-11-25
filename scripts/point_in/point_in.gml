/// @description point_in(left,top,right,bottom,px,py)
/// @param left
/// @param top
/// @param right
/// @param bottom
/// @param px
/// @param py
function point_in(argument0, argument1, argument2, argument3, argument4, argument5) {
	if(argument4<argument0)return false
	if(argument4>argument2)return false
	if(argument5<argument1)return false
	if(argument5>argument3)return false
	return true



}
