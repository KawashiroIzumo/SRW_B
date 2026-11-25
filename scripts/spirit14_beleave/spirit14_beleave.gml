/// @description spirit14_beleave(mrid)
/// @param mrid
function spirit14_beleave(argument0) {
	var mrid,pid,rid,i;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	pid=global.mrobo_pliot[mrid]
	a=instance_create(2,2,ability_change_con)
	a.mode=0
	a.mrid=mrid
	a.dmg=2000
	a.xs_fx=true
	a.xs_fx_ind=spfx12_genx2
	return true;



}
