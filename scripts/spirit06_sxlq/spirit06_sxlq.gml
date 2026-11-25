/// @description spirit02_autoaim(mrid)
/// @param mrid
function spirit06_sxlq(argument0) {
	var mrid,pid,rid,i;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	if(rid<0)return false;
	pid=global.mrobo_pliot[mrid]
	add_buff(mrid,4)
	a=instance_create(2,2,ability_change_con)
	a.mode=0
	a.mrid=mrid
	a.dmg=0
	a.xs_dig=false
	a.xs_fx=true
	a.xs_fx_ind=spfx06_sxlq
	return true;



}
