/// @description spirit10_airplus(mrid)
/// @param mrid
function spirit10_airplus(argument0) {
	var mrid,pid,rid,i;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	pid=global.mrobo_pliot[mrid]
	global.mrobo_pliot_ql[mrid]+=30
	a=instance_create(2,2,ability_change_con)
	a.mode=0
	a.mrid=mrid
	a.dmg=0
	a.xs_dig=false
	a.xs_fx=true
	a.xs_fx_ind=spfx09_air
	return true;



}
