/// @description spirit26_qd(mrid)
/// @param mrid
function spirit26_qd(argument0) {
	var mrid,pid,rid,i;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	pid=global.mrobo_pliot[mrid]
	a=instance_create(2,2,ability_change_con)
	a.mode=2
	a.mrid=mrid
	a.dmg=50
	a.xs_fx=true
	a.xs_fx_ind=spfx26_qd
	return true;



}
