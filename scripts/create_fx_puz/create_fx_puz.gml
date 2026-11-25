/// @description create_fx_puz(obj,dx,dy)
/// @param obj
/// @param dx
/// @param dy
function create_fx_puz(argument0, argument1, argument2) {
	var lsx,lsy,a;
	lsx=96+argument1*64
	lsy=96+argument2*64
	a=instance_create(lsx,lsy,argument0)
	a.pux=argument1
	a.puy=argument2
	return a



}
