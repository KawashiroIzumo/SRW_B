/// @description mrobo_add_equip(mis,box,eid)
/// @param mis
/// @param box
/// @param eid
function mrobo_add_equip(argument0, argument1, argument2) {
	var mis=argument0,box=argument1,eid=argument2;
	global.mrobo_hp[mis]+=global.equip_hp[eid]
	global.mrobo_en[mis]+=global.equip_en[eid]
	global.mrobo_ac[mis]+=global.equip_ac[eid]
	global.mrobo_ab[mis]+=global.equip_ab[eid]
	global.mrobo_def[mis]+=global.equip_def[eid]
	global.mrobo_equip[mis,box]=eid
	return box;



}
