/// @description spirit12_genx2(mrid)
/// @param mrid
function spirit12_genx2(argument0) {
	var mrid,pid,rid,i,a;
	mrid=argument0
	rid=global.mrobo_id[mrid]
	pid=global.mrobo_pliot[mrid]
	a=instance_create(2,2,ability_change_con)
	a.mode=0
	a.mrid=mrid
	a.dmg=global.mrobo_hpm[mrid]
	a.xs_fx=true
	a.xs_fx_ind=spfx12_genx2
	return true;



}
